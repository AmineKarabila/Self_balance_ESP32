# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# compile C with /Users/aminekarabila/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DESP_LWIP_COMPONENT_BUILD -DESP_PLATFORM -DIDF_VER=\"v5.2-dev-351-gd341e2c8e2-dirty\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/config -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/include/apps -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/include/apps/sntp -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/lwip/src/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/port/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/port/freertos/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/port/esp32xx/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/lwip/port/esp32xx/include/arch -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/newlib/platform_include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/freertos/esp_additions/include/freertos -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/freertos/esp_additions/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/freertos/esp_additions/arch/xtensa/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_hw_support/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_hw_support/include/soc -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_hw_support/include/soc/esp32 -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_hw_support/port/esp32/. -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_hw_support/port/esp32/private_include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/heap/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/log/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/soc/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/soc/esp32 -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/soc/esp32/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/hal/esp32/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/hal/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/hal/platform_port/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_rom/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_rom/include/esp32 -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_rom/esp32 -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_common/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_system/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_system/port/soc -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_system/port/include/private -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/xtensa/esp32/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/xtensa/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/xtensa/deprecated_include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/vfs/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_eth/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_event/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/deprecated -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/analog_comparator/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/dac/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/gpio/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/gptimer/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/i2c/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/i2s/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/ledc/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/mcpwm/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/parlio/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/pcnt/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/rmt/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/sdio_slave/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/sdmmc/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/sigma_delta/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/spi/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/temperature_sensor/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/touch_sensor/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/twai/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/uart/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/usb_serial_jtag/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/driver/touch_sensor/esp32/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_pm/include -I/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/esp_ringbuf/include

C_FLAGS = -mlongcalls -Wno-frame-address  -fdiagnostics-color=always -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fmacro-prefix-map=/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32=. -fmacro-prefix-map=/Users/aminekarabila/Desktop/ESP32Coding/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -DconfigENABLE_FREERTOS_DEBUG_OCDAWARE=1 -std=gnu17 -Wno-old-style-declaration -Wno-address -Wno-format

# Custom flags: esp-idf/lwip/CMakeFiles/__idf_lwip.dir/lwip/src/core/tcp.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/lwip/CMakeFiles/__idf_lwip.dir/lwip/src/netif/ppp/chap_ms.c.obj_FLAGS = -Wno-array-parameter

# Custom flags: esp-idf/lwip/CMakeFiles/__idf_lwip.dir/lwip/src/netif/ppp/pppos.c.obj_FLAGS = -Wno-type-limits

