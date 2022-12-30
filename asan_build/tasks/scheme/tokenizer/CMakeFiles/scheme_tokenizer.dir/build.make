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
include tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/flags.make

tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o: tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/flags.make
tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o: ../tasks/scheme/tokenizer/tokenizer.cpp
tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o: tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o -MF CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o.d -o CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o -c /home/boris/cpp-advanced-hse/tasks/scheme/tokenizer/tokenizer.cpp

tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/scheme/tokenizer/tokenizer.cpp > CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.i

tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/scheme/tokenizer/tokenizer.cpp -o CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.s

# Object files for target scheme_tokenizer
scheme_tokenizer_OBJECTS = \
"CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o"

# External object files for target scheme_tokenizer
scheme_tokenizer_EXTERNAL_OBJECTS =

tasks/scheme/tokenizer/libscheme_tokenizer.a: tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/tokenizer.cpp.o
tasks/scheme/tokenizer/libscheme_tokenizer.a: tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/build.make
tasks/scheme/tokenizer/libscheme_tokenizer.a: tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libscheme_tokenizer.a"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer && $(CMAKE_COMMAND) -P CMakeFiles/scheme_tokenizer.dir/cmake_clean_target.cmake
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scheme_tokenizer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/build: tasks/scheme/tokenizer/libscheme_tokenizer.a
.PHONY : tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/build

tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/clean:
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer && $(CMAKE_COMMAND) -P CMakeFiles/scheme_tokenizer.dir/cmake_clean.cmake
.PHONY : tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/clean

tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/depend:
	cd /home/boris/cpp-advanced-hse/asan_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/scheme/tokenizer /home/boris/cpp-advanced-hse/asan_build /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer /home/boris/cpp-advanced-hse/asan_build/tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/scheme/tokenizer/CMakeFiles/scheme_tokenizer.dir/depend

