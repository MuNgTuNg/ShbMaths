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
CMAKE_SOURCE_DIR = /home/mungtung/dev/maths

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mungtung/dev/maths/build

# Include any dependencies generated for this target.
include CMakeFiles/maths.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/maths.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/maths.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/maths.dir/flags.make

CMakeFiles/maths.dir/maths.cpp.o: CMakeFiles/maths.dir/flags.make
CMakeFiles/maths.dir/maths.cpp.o: ../maths.cpp
CMakeFiles/maths.dir/maths.cpp.o: CMakeFiles/maths.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mungtung/dev/maths/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/maths.dir/maths.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/maths.dir/maths.cpp.o -MF CMakeFiles/maths.dir/maths.cpp.o.d -o CMakeFiles/maths.dir/maths.cpp.o -c /home/mungtung/dev/maths/maths.cpp

CMakeFiles/maths.dir/maths.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/maths.dir/maths.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mungtung/dev/maths/maths.cpp > CMakeFiles/maths.dir/maths.cpp.i

CMakeFiles/maths.dir/maths.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/maths.dir/maths.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mungtung/dev/maths/maths.cpp -o CMakeFiles/maths.dir/maths.cpp.s

# Object files for target maths
maths_OBJECTS = \
"CMakeFiles/maths.dir/maths.cpp.o"

# External object files for target maths
maths_EXTERNAL_OBJECTS =

maths: CMakeFiles/maths.dir/maths.cpp.o
maths: CMakeFiles/maths.dir/build.make
maths: CMakeFiles/maths.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mungtung/dev/maths/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable maths"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/maths.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/maths.dir/build: maths
.PHONY : CMakeFiles/maths.dir/build

CMakeFiles/maths.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/maths.dir/cmake_clean.cmake
.PHONY : CMakeFiles/maths.dir/clean

CMakeFiles/maths.dir/depend:
	cd /home/mungtung/dev/maths/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mungtung/dev/maths /home/mungtung/dev/maths /home/mungtung/dev/maths/build /home/mungtung/dev/maths/build /home/mungtung/dev/maths/build/CMakeFiles/maths.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/maths.dir/depend

