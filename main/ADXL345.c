#include <stdio.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/i2c.h"
#include "sdkconfig.h"
#include <sys/time.h>

//! I2C bus defines
#define I2C_SCL_IO 22
#define I2C_SDA_IO 21
#define I2C_FREQ_HZ 400000
#define I2C_MASTER_PORT_NUM 0
#define I2C_TX_BUF_DISABLE 0
#define I2C_RX_BUF_DISABLE 0
#define I2C_MASTER_TIMEOUT_MS 1000

//! I2C common protocol defines
#define WRITE_BIT I2C_MASTER_WRITE
#define READ_BIT I2C_MASTER_READ
#define ACK_CHECK_EN 0x1
#define ACK_CHECK_DIS 0x0
#define ACK_VAL 0x0
#define NACK_VAL 0x1

//! ADXL defines
#define ADXL_I2C_ADDR 0x53
#define POWER_CTRL 0x2D
#define BW_RATE 0x2C
#define DATA_FORMAT 0x31
#define DATA_START_ADDR 0x32

#define ADXL_2G 0x00
#define ADXL_4G 0x01
#define ADXL_8G 0x02
#define ADXL_16G 0x03

#define ADXL_3200 0x0F
#define ADXL_1600 0x0E
#define ADXL_800 0x0D
#define ADXL_400 0x0C
#define ADXL_200 0x0B
#define ADXL_100 0x0A // default


struct timeval stop, start;

typedef struct ADXL_DATA
{
    int16_t AcX, AcY, AcZ;
} stADXL_DATA_t;

static esp_err_t i2c_master_init()
{
    uint8_t i2c_master_port = 0;
    i2c_config_t conf = {
        .mode = I2C_MODE_MASTER,
        .sda_io_num = I2C_SDA_IO,
        .scl_io_num = I2C_SCL_IO,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = I2C_FREQ_HZ};
    i2c_param_config(i2c_master_port, &conf);
    return i2c_driver_install(
        i2c_master_port,
        conf.mode,
        I2C_RX_BUF_DISABLE,
        I2C_TX_BUF_DISABLE,
        0);
}

esp_err_t writeADXL(uint8_t reg_addr, uint8_t data)
{
    uint8_t write_buff[2] = {reg_addr, data};

    return i2c_master_write_to_device(I2C_MASTER_PORT_NUM,
                                      ADXL_I2C_ADDR,
                                      write_buff,
                                      sizeof(write_buff),
                                      I2C_MASTER_TIMEOUT_MS / portTICK_PERIOD_MS);
}

esp_err_t readADXL(uint8_t reg_addr, uint8_t *data, size_t len)
{
    return i2c_master_write_read_device(
        I2C_MASTER_PORT_NUM,
        ADXL_I2C_ADDR,
        &reg_addr,
        1,
        data,
        len,
        I2C_MASTER_TIMEOUT_MS / portTICK_PERIOD_MS);
}

static void initADXL(uint8_t range, uint8_t rate)
{
    //? Set range
    uint8_t temp_value;
    ESP_ERROR_CHECK(readADXL(DATA_FORMAT, &temp_value, 1));
    temp_value &= ~0x0F;
    temp_value |= range;
    temp_value |= 0x08; // full resolution
    ESP_ERROR_CHECK(writeADXL(DATA_FORMAT, temp_value));
    //? Activate measure
    ESP_ERROR_CHECK(writeADXL(POWER_CTRL, 0x8));
    //? Output data rate
    ESP_ERROR_CHECK(writeADXL(BW_RATE, rate));
}

void printReg(uint8_t addr)
{
    uint8_t temp_value = 0;
    ESP_ERROR_CHECK(readADXL(addr, &temp_value, 1));
    printf("%X\t %X this is data\n", temp_value, addr);
    vTaskDelay(3000 / portTICK_PERIOD_MS);
}

void xReadADXL(void *params)
{
    int i = 0;
    while (true)
    {
        gettimeofday(&start, NULL);
        uint8_t data[6];

        ESP_ERROR_CHECK(readADXL(DATA_START_ADDR, data, 6));

        stADXL_DATA_t adxlData;
        adxlData.AcX = (data[0] | data[1] << 8) ;
        adxlData.AcY = (data[2] | data[3] << 8) ;
        adxlData.AcZ = (data[4] | data[5] << 8) ;

        printf("%d\t\t%d\t%d\t%d\n", ++i, adxlData.AcX, adxlData.AcY, adxlData.AcZ);
        vTaskDelay(20 / portTICK_PERIOD_MS);
        gettimeofday(&stop, NULL);
        printf("took %lld us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec);

    }
}

void app_main()
{
    ESP_ERROR_CHECK(i2c_master_init());

    initADXL(ADXL_2G, ADXL_400);

    printf("Hello sky==> Specs2\n");
    printReg(DATA_FORMAT);
    printReg(POWER_CTRL);
    printReg(BW_RATE);

    vTaskDelay(3000 / portTICK_PERIOD_MS);

    xTaskCreate(xReadADXL, "adxl_read", 2048 * 2, NULL, 1, NULL);
}
