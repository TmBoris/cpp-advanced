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
include tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/flags.make

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.o: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/flags.make
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.o: ../tasks/jpeg-decoder/baseline/huffman.cpp
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.o: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.o -MF CMakeFiles/decoder_baseline.dir/huffman.cpp.o.d -o CMakeFiles/decoder_baseline.dir/huffman.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/huffman.cpp

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decoder_baseline.dir/huffman.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/huffman.cpp > CMakeFiles/decoder_baseline.dir/huffman.cpp.i

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decoder_baseline.dir/huffman.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/huffman.cpp -o CMakeFiles/decoder_baseline.dir/huffman.cpp.s

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.o: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/flags.make
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.o: ../tasks/jpeg-decoder/baseline/fft.cpp
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.o: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.o -MF CMakeFiles/decoder_baseline.dir/fft.cpp.o.d -o CMakeFiles/decoder_baseline.dir/fft.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/fft.cpp

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decoder_baseline.dir/fft.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/fft.cpp > CMakeFiles/decoder_baseline.dir/fft.cpp.i

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decoder_baseline.dir/fft.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/fft.cpp -o CMakeFiles/decoder_baseline.dir/fft.cpp.s

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.o: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/flags.make
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.o: ../tasks/jpeg-decoder/baseline/decoder.cpp
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.o: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.o -MF CMakeFiles/decoder_baseline.dir/decoder.cpp.o.d -o CMakeFiles/decoder_baseline.dir/decoder.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/decoder.cpp

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decoder_baseline.dir/decoder.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/decoder.cpp > CMakeFiles/decoder_baseline.dir/decoder.cpp.i

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decoder_baseline.dir/decoder.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/decoder.cpp -o CMakeFiles/decoder_baseline.dir/decoder.cpp.s

# Object files for target decoder_baseline
decoder_baseline_OBJECTS = \
"CMakeFiles/decoder_baseline.dir/huffman.cpp.o" \
"CMakeFiles/decoder_baseline.dir/fft.cpp.o" \
"CMakeFiles/decoder_baseline.dir/decoder.cpp.o"

# External object files for target decoder_baseline
decoder_baseline_EXTERNAL_OBJECTS =

tasks/jpeg-decoder/baseline/libdecoder_baseline.a: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/huffman.cpp.o
tasks/jpeg-decoder/baseline/libdecoder_baseline.a: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/fft.cpp.o
tasks/jpeg-decoder/baseline/libdecoder_baseline.a: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/decoder.cpp.o
tasks/jpeg-decoder/baseline/libdecoder_baseline.a: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/build.make
tasks/jpeg-decoder/baseline/libdecoder_baseline.a: tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libdecoder_baseline.a"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && $(CMAKE_COMMAND) -P CMakeFiles/decoder_baseline.dir/cmake_clean_target.cmake
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/decoder_baseline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/build: tasks/jpeg-decoder/baseline/libdecoder_baseline.a
.PHONY : tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/build

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/clean:
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline && $(CMAKE_COMMAND) -P CMakeFiles/decoder_baseline.dir/cmake_clean.cmake
.PHONY : tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/clean

tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/depend:
	cd /home/boris/cpp-advanced-hse/asan_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline /home/boris/cpp-advanced-hse/asan_build /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/jpeg-decoder/baseline/CMakeFiles/decoder_baseline.dir/depend

