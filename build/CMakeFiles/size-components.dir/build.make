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

# Utility rule file for size-components.

# Include any custom commands dependencies for this target.
include CMakeFiles/size-components.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/size-components.dir/progress.make

CMakeFiles/size-components: ADXL345.map
	/opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -D "IDF_SIZE_TOOL=/Users/aminekarabila/.espressif/python_env/idf5.2_py3.11_env/bin/python;-m;esp_idf_size" -D IDF_SIZE_MODE=--archives -D MAP_FILE=/Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/ADXL345.map -D OUTPUT_JSON= -P /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/tools/cmake/run_size_tool.cmake

size-components: CMakeFiles/size-components
size-components: CMakeFiles/size-components.dir/build.make
.PHONY : size-components

# Rule to build all files generated by this target.
CMakeFiles/size-components.dir/build: size-components
.PHONY : CMakeFiles/size-components.dir/build

CMakeFiles/size-components.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/size-components.dir/cmake_clean.cmake
.PHONY : CMakeFiles/size-components.dir/clean

CMakeFiles/size-components.dir/depend:
	cd /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32 /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32 /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build /Users/aminekarabila/Desktop/ESP32Coding/esp-idf/ADXL345/Self_balance_ESP32/build/CMakeFiles/size-components.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/size-components.dir/depend
