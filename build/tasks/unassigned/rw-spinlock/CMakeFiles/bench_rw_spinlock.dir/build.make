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
include tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/flags.make

tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o: tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/flags.make
tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o: ../tasks/unassigned/rw-spinlock/run.cpp
tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o: tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o -MF CMakeFiles/bench_rw_spinlock.dir/run.cpp.o.d -o CMakeFiles/bench_rw_spinlock.dir/run.cpp.o -c /home/boris/cpp-advanced-hse/tasks/unassigned/rw-spinlock/run.cpp

tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench_rw_spinlock.dir/run.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/unassigned/rw-spinlock/run.cpp > CMakeFiles/bench_rw_spinlock.dir/run.cpp.i

tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench_rw_spinlock.dir/run.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/unassigned/rw-spinlock/run.cpp -o CMakeFiles/bench_rw_spinlock.dir/run.cpp.s

# Object files for target bench_rw_spinlock
bench_rw_spinlock_OBJECTS = \
"CMakeFiles/bench_rw_spinlock.dir/run.cpp.o"

# External object files for target bench_rw_spinlock
bench_rw_spinlock_EXTERNAL_OBJECTS =

bench_rw_spinlock: tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o
bench_rw_spinlock: tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/build.make
bench_rw_spinlock: libbenchmark.a
bench_rw_spinlock: tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bench_rw_spinlock"
	cd /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_rw_spinlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/build: bench_rw_spinlock
.PHONY : tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/build

tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/clean:
	cd /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock && $(CMAKE_COMMAND) -P CMakeFiles/bench_rw_spinlock.dir/cmake_clean.cmake
.PHONY : tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/clean

tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/depend:
	cd /home/boris/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/unassigned/rw-spinlock /home/boris/cpp-advanced-hse/build /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock /home/boris/cpp-advanced-hse/build/tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/unassigned/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/depend

