# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build

# Include any dependencies generated for this target.
include CMakeFiles/calculator_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculator_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculator_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculator_lib.dir/flags.make

CMakeFiles/calculator_lib.dir/calculator.cpp.o: CMakeFiles/calculator_lib.dir/flags.make
CMakeFiles/calculator_lib.dir/calculator.cpp.o: /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/calculator.cpp
CMakeFiles/calculator_lib.dir/calculator.cpp.o: CMakeFiles/calculator_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calculator_lib.dir/calculator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator_lib.dir/calculator.cpp.o -MF CMakeFiles/calculator_lib.dir/calculator.cpp.o.d -o CMakeFiles/calculator_lib.dir/calculator.cpp.o -c /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/calculator.cpp

CMakeFiles/calculator_lib.dir/calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator_lib.dir/calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/calculator.cpp > CMakeFiles/calculator_lib.dir/calculator.cpp.i

CMakeFiles/calculator_lib.dir/calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator_lib.dir/calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/calculator.cpp -o CMakeFiles/calculator_lib.dir/calculator.cpp.s

# Object files for target calculator_lib
calculator_lib_OBJECTS = \
"CMakeFiles/calculator_lib.dir/calculator.cpp.o"

# External object files for target calculator_lib
calculator_lib_EXTERNAL_OBJECTS =

libcalculator_lib.a: CMakeFiles/calculator_lib.dir/calculator.cpp.o
libcalculator_lib.a: CMakeFiles/calculator_lib.dir/build.make
libcalculator_lib.a: CMakeFiles/calculator_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libcalculator_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/calculator_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculator_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculator_lib.dir/build: libcalculator_lib.a
.PHONY : CMakeFiles/calculator_lib.dir/build

CMakeFiles/calculator_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calculator_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calculator_lib.dir/clean

CMakeFiles/calculator_lib.dir/depend:
	cd /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build /mnt/c/Users/Fares/Desktop/CS2-Calculator-Mohamed-Fares/CS2-Calculator-Mohamed-Fares/build/CMakeFiles/calculator_lib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/calculator_lib.dir/depend

