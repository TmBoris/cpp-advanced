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
CMAKE_BINARY_DIR = /home/boris/cpp-advanced-hse/asan_build

# Include any dependencies generated for this target.
include tasks/errors/grep/CMakeFiles/test_grep.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/errors/grep/CMakeFiles/test_grep.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/errors/grep/CMakeFiles/test_grep.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/errors/grep/CMakeFiles/test_grep.dir/flags.make

tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.o: tasks/errors/grep/CMakeFiles/test_grep.dir/flags.make
tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.o: ../tasks/errors/grep/test.cpp
tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.o: tasks/errors/grep/CMakeFiles/test_grep.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.o -MF CMakeFiles/test_grep.dir/test.cpp.o.d -o CMakeFiles/test_grep.dir/test.cpp.o -c /home/boris/cpp-advanced-hse/tasks/errors/grep/test.cpp

tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_grep.dir/test.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/errors/grep/test.cpp > CMakeFiles/test_grep.dir/test.cpp.i

tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_grep.dir/test.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/errors/grep/test.cpp -o CMakeFiles/test_grep.dir/test.cpp.s

# Object files for target test_grep
test_grep_OBJECTS = \
"CMakeFiles/test_grep.dir/test.cpp.o"

# External object files for target test_grep
test_grep_EXTERNAL_OBJECTS =

test_grep: tasks/errors/grep/CMakeFiles/test_grep.dir/test.cpp.o
test_grep: tasks/errors/grep/CMakeFiles/test_grep.dir/build.make
test_grep: libcontrib_catch_main.a
test_grep: tasks/errors/grep/CMakeFiles/test_grep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../test_grep"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_grep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/errors/grep/CMakeFiles/test_grep.dir/build: test_grep
.PHONY : tasks/errors/grep/CMakeFiles/test_grep.dir/build

tasks/errors/grep/CMakeFiles/test_grep.dir/clean:
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep && $(CMAKE_COMMAND) -P CMakeFiles/test_grep.dir/cmake_clean.cmake
.PHONY : tasks/errors/grep/CMakeFiles/test_grep.dir/clean

tasks/errors/grep/CMakeFiles/test_grep.dir/depend:
	cd /home/boris/cpp-advanced-hse/asan_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/errors/grep /home/boris/cpp-advanced-hse/asan_build /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep /home/boris/cpp-advanced-hse/asan_build/tasks/errors/grep/CMakeFiles/test_grep.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/errors/grep/CMakeFiles/test_grep.dir/depend

