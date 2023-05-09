# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/bootloader/subproject"
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader"
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix"
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix/tmp"
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix/src"
  "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
