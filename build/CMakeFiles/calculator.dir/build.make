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
CMAKE_SOURCE_DIR = /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build

# Include any dependencies generated for this target.
include CMakeFiles/calculator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculator.dir/flags.make

CMakeFiles/calculator.dir/calculator.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator.cpp.o: ../calculator.cpp
CMakeFiles/calculator.dir/calculator.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calculator.dir/calculator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator.cpp.o -MF CMakeFiles/calculator.dir/calculator.cpp.o.d -o CMakeFiles/calculator.dir/calculator.cpp.o -c /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/calculator.cpp

CMakeFiles/calculator.dir/calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/calculator.cpp > CMakeFiles/calculator.dir/calculator.cpp.i

CMakeFiles/calculator.dir/calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/calculator.cpp -o CMakeFiles/calculator.dir/calculator.cpp.s

# Object files for target calculator
calculator_OBJECTS = \
"CMakeFiles/calculator.dir/calculator.cpp.o"

# External object files for target calculator
calculator_EXTERNAL_OBJECTS =

libcalculator.a: CMakeFiles/calculator.dir/calculator.cpp.o
libcalculator.a: CMakeFiles/calculator.dir/build.make
libcalculator.a: CMakeFiles/calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libcalculator.a"
	$(CMAKE_COMMAND) -P CMakeFiles/calculator.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculator.dir/build: libcalculator.a
.PHONY : CMakeFiles/calculator.dir/build

CMakeFiles/calculator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calculator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calculator.dir/clean

CMakeFiles/calculator.dir/depend:
	cd /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build /home/mohany/Desktop/CS2-Calculator-Mohamed-Fares/build/CMakeFiles/calculator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calculator.dir/depend

