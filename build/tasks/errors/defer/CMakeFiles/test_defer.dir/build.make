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
CMAKE_SOURCE_DIR = /home/boris/cpp-advanced-hse

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/boris/cpp-advanced-hse/build

# Include any dependencies generated for this target.
include tasks/errors/defer/CMakeFiles/test_defer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/errors/defer/CMakeFiles/test_defer.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/errors/defer/CMakeFiles/test_defer.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/errors/defer/CMakeFiles/test_defer.dir/flags.make

tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.o: tasks/errors/defer/CMakeFiles/test_defer.dir/flags.make
tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.o: ../tasks/errors/defer/test.cpp
tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.o: tasks/errors/defer/CMakeFiles/test_defer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/errors/defer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.o -MF CMakeFiles/test_defer.dir/test.cpp.o.d -o CMakeFiles/test_defer.dir/test.cpp.o -c /home/boris/cpp-advanced-hse/tasks/errors/defer/test.cpp

tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_defer.dir/test.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/errors/defer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/errors/defer/test.cpp > CMakeFiles/test_defer.dir/test.cpp.i

tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_defer.dir/test.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/errors/defer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/errors/defer/test.cpp -o CMakeFiles/test_defer.dir/test.cpp.s

# Object files for target test_defer
test_defer_OBJECTS = \
"CMakeFiles/test_defer.dir/test.cpp.o"

# External object files for target test_defer
test_defer_EXTERNAL_OBJECTS =

test_defer: tasks/errors/defer/CMakeFiles/test_defer.dir/test.cpp.o
test_defer: tasks/errors/defer/CMakeFiles/test_defer.dir/build.make
test_defer: libcontrib_catch_main.a
test_defer: tasks/errors/defer/CMakeFiles/test_defer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../test_defer"
	cd /home/boris/cpp-advanced-hse/build/tasks/errors/defer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_defer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/errors/defer/CMakeFiles/test_defer.dir/build: test_defer
.PHONY : tasks/errors/defer/CMakeFiles/test_defer.dir/build

tasks/errors/defer/CMakeFiles/test_defer.dir/clean:
	cd /home/boris/cpp-advanced-hse/build/tasks/errors/defer && $(CMAKE_COMMAND) -P CMakeFiles/test_defer.dir/cmake_clean.cmake
.PHONY : tasks/errors/defer/CMakeFiles/test_defer.dir/clean

tasks/errors/defer/CMakeFiles/test_defer.dir/depend:
	cd /home/boris/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/errors/defer /home/boris/cpp-advanced-hse/build /home/boris/cpp-advanced-hse/build/tasks/errors/defer /home/boris/cpp-advanced-hse/build/tasks/errors/defer/CMakeFiles/test_defer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/errors/defer/CMakeFiles/test_defer.dir/depend
