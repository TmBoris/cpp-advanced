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
include tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o: ../tasks/jpeg-decoder/huffman/tests/test_huffman.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o -MF CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/huffman/tests/test_huffman.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/huffman/tests/test_huffman.cpp > CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/huffman/tests/test_huffman.cpp -o CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o: ../tasks/jpeg-decoder/fftw/tests/test_fft.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o -MF CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/fftw/tests/test_fft.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/fftw/tests/test_fft.cpp > CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/fftw/tests/test_fft.cpp -o CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o: ../tasks/jpeg-decoder/baseline/tests/test_baseline.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o -MF CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/tests/test_baseline.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/tests/test_baseline.cpp > CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/baseline/tests/test_baseline.cpp -o CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o: ../tasks/jpeg-decoder/faster/tests/test_faster.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o -MF CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/faster/tests/test_faster.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/faster/tests/test_faster.cpp > CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/faster/tests/test_faster.cpp -o CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o: ../tasks/jpeg-decoder/utils/logger_init.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o -MF CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/logger_init.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/logger_init.cpp > CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/logger_init.cpp -o CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o: ../tasks/jpeg-decoder/utils/libjpg_reader.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o -MF CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/libjpg_reader.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/libjpg_reader.cpp > CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/libjpg_reader.cpp -o CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o: ../tasks/jpeg-decoder/utils/png_encoder.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o -MF CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/png_encoder.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/png_encoder.cpp > CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/png_encoder.cpp -o CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.s

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/flags.make
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o: ../tasks/jpeg-decoder/utils/test_commons.cpp
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o -MF CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o.d -o CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o -c /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/test_commons.cpp

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.i"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/test_commons.cpp > CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.i

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.s"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/tasks/jpeg-decoder/utils/test_commons.cpp -o CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.s

# Object files for target test_decoder_faster
test_decoder_faster_OBJECTS = \
"CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o" \
"CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o"

# External object files for target test_decoder_faster
test_decoder_faster_EXTERNAL_OBJECTS =

test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/huffman/tests/test_huffman.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/fftw/tests/test_fft.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/baseline/tests/test_baseline.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/faster/tests/test_faster.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/logger_init.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/libjpg_reader.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/png_encoder.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/utils/test_commons.cpp.o
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/build.make
test_decoder_faster: libcontrib_catch_main.a
test_decoder_faster: tasks/jpeg-decoder/faster/libdecoder_faster.a
test_decoder_faster: /usr/lib/x86_64-linux-gnu/libfftw3.so
test_decoder_faster: /usr/lib/x86_64-linux-gnu/libpng.so
test_decoder_faster: /usr/lib/x86_64-linux-gnu/libjpeg.so
test_decoder_faster: glog/glog-build/libglog.a
test_decoder_faster: tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/asan_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../../test_decoder_faster"
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_decoder_faster.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/build: test_decoder_faster
.PHONY : tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/build

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/clean:
	cd /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder && $(CMAKE_COMMAND) -P CMakeFiles/test_decoder_faster.dir/cmake_clean.cmake
.PHONY : tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/clean

tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/depend:
	cd /home/boris/cpp-advanced-hse/asan_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/tasks/jpeg-decoder /home/boris/cpp-advanced-hse/asan_build /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder /home/boris/cpp-advanced-hse/asan_build/tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/jpeg-decoder/CMakeFiles/test_decoder_faster.dir/depend

