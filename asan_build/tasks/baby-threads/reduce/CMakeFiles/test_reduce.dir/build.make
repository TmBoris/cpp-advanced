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
include tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/flags.make

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/flags.make
tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o: ../contrib/gmock_main.cc
tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o -MF CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o.d -o CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o -c /home/boris/cpp-advanced-hse/contrib/gmock_main.cc

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/contrib/gmock_main.cc > CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.i

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/contrib/gmock_main.cc -o CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.s

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.o: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/flags.make
tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.o: ../tasks/baby-threads/reduce/test.cpp
tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.o: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.o -MF CMakeFiles/test_reduce.dir/test.cpp.o.d -o CMakeFiles/test_reduce.dir/test.cpp.o -c /home/boris/cpp-advanced-hse/tasks/baby-threads/reduce/test.cpp

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_reduce.dir/test.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/baby-threads/reduce/test.cpp > CMakeFiles/test_reduce.dir/test.cpp.i

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_reduce.dir/test.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/baby-threads/reduce/test.cpp -o CMakeFiles/test_reduce.dir/test.cpp.s

# Object files for target test_reduce
test_reduce_OBJECTS = \
"CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o" \
"CMakeFiles/test_reduce.dir/test.cpp.o"

# External object files for target test_reduce
test_reduce_EXTERNAL_OBJECTS =

test_reduce: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/__/__/__/contrib/gmock_main.cc.o
test_reduce: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/test.cpp.o
test_reduce: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/build.make
test_reduce: libgmock.a
test_reduce: tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../test_reduce"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_reduce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/build: test_reduce
.PHONY : tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/build

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/clean:
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce && $(CMAKE_COMMAND) -P CMakeFiles/test_reduce.dir/cmake_clean.cmake
.PHONY : tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/clean

tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/depend:
	cd /home/boris/cpp-advanced-hse/asan_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/baby-threads/reduce /home/boris/cpp-advanced-hse/asan_build /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce /home/boris/cpp-advanced-hse/asan_build/tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/baby-threads/reduce/CMakeFiles/test_reduce.dir/depend

