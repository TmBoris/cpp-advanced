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
include tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/flags.make

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/flags.make
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o: ../tasks/scheme/parser/tests/test_tokenizer.cpp
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o -MF CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o.d -o CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_tokenizer.cpp

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_tokenizer.cpp > CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.i

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_tokenizer.cpp -o CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.s

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/flags.make
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o: ../tasks/scheme/parser/tests/test_parser.cpp
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o -MF CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o.d -o CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_parser.cpp

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_parser.cpp > CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.i

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_parser.cpp -o CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.s

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/flags.make
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o: ../tasks/scheme/parser/tests/test_fuzzing_1.cpp
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o -MF CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o.d -o CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_fuzzing_1.cpp

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.i"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_fuzzing_1.cpp > CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.i

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.s"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/parser/tests/test_fuzzing_1.cpp -o CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.s

# Object files for target test_scheme_parser
test_scheme_parser_OBJECTS = \
"CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o" \
"CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o" \
"CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o"

# External object files for target test_scheme_parser
test_scheme_parser_EXTERNAL_OBJECTS =

test_scheme_parser: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_tokenizer.cpp.o
test_scheme_parser: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_parser.cpp.o
test_scheme_parser: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/tests/test_fuzzing_1.cpp.o
test_scheme_parser: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/build.make
test_scheme_parser: libcontrib_catch_main.a
test_scheme_parser: tasks/scheme/parser/libscheme_parser.a
test_scheme_parser: tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../test_scheme_parser"
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_scheme_parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/build: test_scheme_parser
.PHONY : tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/build

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/clean:
	cd /home/boris/cpp-advanced-hse/build/tasks/scheme/parser && $(CMAKE_COMMAND) -P CMakeFiles/test_scheme_parser.dir/cmake_clean.cmake
.PHONY : tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/clean

tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/depend:
	cd /home/boris/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/scheme/parser /home/boris/cpp-advanced-hse/build /home/boris/cpp-advanced-hse/build/tasks/scheme/parser /home/boris/cpp-advanced-hse/build/tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/scheme/parser/CMakeFiles/test_scheme_parser.dir/depend

