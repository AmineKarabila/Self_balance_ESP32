# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build

# Utility rule file for efuse_custom_table.

# Include any custom commands dependencies for this target.
include esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/progress.make

esp-idf/efuse/CMakeFiles/efuse_custom_table:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Warning: command \"efuse_custom_table\" is deprecated. Have you wanted to run \"efuse-custom-table\" instead?"
	cd /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/esp-idf/efuse && /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E echo 

efuse_custom_table: esp-idf/efuse/CMakeFiles/efuse_custom_table
efuse_custom_table: esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/build.make
.PHONY : efuse_custom_table

# Rule to build all files generated by this target.
esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/build: efuse_custom_table
.PHONY : esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/build

esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/clean:
	cd /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/esp-idf/efuse && $(CMAKE_COMMAND) -P CMakeFiles/efuse_custom_table.dir/cmake_clean.cmake
.PHONY : esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/clean

esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/depend:
	cd /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32 /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/components/efuse /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/esp-idf/efuse /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/efuse/CMakeFiles/efuse_custom_table.dir/depend

