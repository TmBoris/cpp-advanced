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
include tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o: ../tasks/scheme/tidy/tests/test_tokenizer.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_tokenizer.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_tokenizer.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_tokenizer.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o: ../tasks/scheme/tidy/tests/test_parser.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_parser.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_parser.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_parser.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o: ../tasks/scheme/tidy/tests/test_boolean.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_boolean.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_boolean.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_boolean.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o: ../tasks/scheme/tidy/tests/test_eval.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_eval.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_eval.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_eval.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o: ../tasks/scheme/tidy/tests/test_integer.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_integer.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_integer.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_integer.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o: ../tasks/scheme/tidy/tests/test_list.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_list.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_list.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_list.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o: ../tasks/scheme/tidy/tests/test_fuzzing_2.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_fuzzing_2.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_fuzzing_2.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_fuzzing_2.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o: ../tasks/scheme/tidy/tests/test_symbol.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_symbol.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_symbol.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_symbol.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o: ../tasks/scheme/tidy/tests/test_pair_mut.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_pair_mut.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_pair_mut.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_pair_mut.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o: ../tasks/scheme/tidy/tests/test_control_flow.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_control_flow.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_control_flow.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_control_flow.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.s

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/flags.make
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o: ../tasks/scheme/tidy/tests/test_lambda.cpp
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o -MF CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o.d -o CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_lambda.cpp

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_lambda.cpp > CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.i

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tidy/tests/test_lambda.cpp -o CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.s

# Object files for target test_scheme_tidy
test_scheme_tidy_OBJECTS = \
"CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o" \
"CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o"

# External object files for target test_scheme_tidy
test_scheme_tidy_EXTERNAL_OBJECTS =

test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_tokenizer.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_parser.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_boolean.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_eval.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_integer.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_list.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_fuzzing_2.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_symbol.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_pair_mut.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_control_flow.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/tests/test_lambda.cpp.o
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/build.make
test_scheme_tidy: libcontrib_catch_main.a
test_scheme_tidy: tasks/scheme/tidy/libscheme_tidy.a
test_scheme_tidy: allocations_checker/liballocations_checker.a
test_scheme_tidy: tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable ../../../test_scheme_tidy"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_scheme_tidy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/build: test_scheme_tidy
.PHONY : tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/build

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/clean:
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy && $(CMAKE_COMMAND) -P CMakeFiles/test_scheme_tidy.dir/cmake_clean.cmake
.PHONY : tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/clean

tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/depend:
	cd /home/boris/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/scheme/tidy /home/boris/cpp-advanced-hse/build /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy /home/boris/cpp-advanced-hse/build/tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/scheme/tidy/CMakeFiles/test_scheme_tidy.dir/depend
