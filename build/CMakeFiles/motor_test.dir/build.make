# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tux/lit_tux/gpio_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tux/lit_tux/gpio_test/build

# Include any dependencies generated for this target.
include CMakeFiles/motor_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/motor_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/motor_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/motor_test.dir/flags.make

CMakeFiles/motor_test.dir/src/motor_test.cpp.o: CMakeFiles/motor_test.dir/flags.make
CMakeFiles/motor_test.dir/src/motor_test.cpp.o: ../src/motor_test.cpp
CMakeFiles/motor_test.dir/src/motor_test.cpp.o: CMakeFiles/motor_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tux/lit_tux/gpio_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/motor_test.dir/src/motor_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_test.dir/src/motor_test.cpp.o -MF CMakeFiles/motor_test.dir/src/motor_test.cpp.o.d -o CMakeFiles/motor_test.dir/src/motor_test.cpp.o -c /home/tux/lit_tux/gpio_test/src/motor_test.cpp

CMakeFiles/motor_test.dir/src/motor_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motor_test.dir/src/motor_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tux/lit_tux/gpio_test/src/motor_test.cpp > CMakeFiles/motor_test.dir/src/motor_test.cpp.i

CMakeFiles/motor_test.dir/src/motor_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motor_test.dir/src/motor_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tux/lit_tux/gpio_test/src/motor_test.cpp -o CMakeFiles/motor_test.dir/src/motor_test.cpp.s

# Object files for target motor_test
motor_test_OBJECTS = \
"CMakeFiles/motor_test.dir/src/motor_test.cpp.o"

# External object files for target motor_test
motor_test_EXTERNAL_OBJECTS =

motor_test: CMakeFiles/motor_test.dir/src/motor_test.cpp.o
motor_test: CMakeFiles/motor_test.dir/build.make
motor_test: /usr/local/lib/libJetsonGPIO.so.1.2.5
motor_test: CMakeFiles/motor_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tux/lit_tux/gpio_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable motor_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motor_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/motor_test.dir/build: motor_test
.PHONY : CMakeFiles/motor_test.dir/build

CMakeFiles/motor_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/motor_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/motor_test.dir/clean

CMakeFiles/motor_test.dir/depend:
	cd /home/tux/lit_tux/gpio_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tux/lit_tux/gpio_test /home/tux/lit_tux/gpio_test /home/tux/lit_tux/gpio_test/build /home/tux/lit_tux/gpio_test/build /home/tux/lit_tux/gpio_test/build/CMakeFiles/motor_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/motor_test.dir/depend

