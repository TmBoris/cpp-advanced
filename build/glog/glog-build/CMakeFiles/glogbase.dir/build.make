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
include glog/glog-build/CMakeFiles/glogbase.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.make

# Include the progress variables for this target.
include glog/glog-build/CMakeFiles/glogbase.dir/progress.make

# Include the compile flags for this target's objects.
include glog/glog-build/CMakeFiles/glogbase.dir/flags.make

glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o: glog/glog-src/src/demangle.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o -MF CMakeFiles/glogbase.dir/src/demangle.cc.o.d -o CMakeFiles/glogbase.dir/src/demangle.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/demangle.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/demangle.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/demangle.cc > CMakeFiles/glogbase.dir/src/demangle.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/demangle.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/demangle.cc -o CMakeFiles/glogbase.dir/src/demangle.cc.s

glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o: glog/glog-src/src/logging.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o -MF CMakeFiles/glogbase.dir/src/logging.cc.o.d -o CMakeFiles/glogbase.dir/src/logging.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/logging.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/logging.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/logging.cc > CMakeFiles/glogbase.dir/src/logging.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/logging.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/logging.cc -o CMakeFiles/glogbase.dir/src/logging.cc.s

glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o: glog/glog-src/src/raw_logging.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o -MF CMakeFiles/glogbase.dir/src/raw_logging.cc.o.d -o CMakeFiles/glogbase.dir/src/raw_logging.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/raw_logging.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/raw_logging.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/raw_logging.cc > CMakeFiles/glogbase.dir/src/raw_logging.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/raw_logging.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/raw_logging.cc -o CMakeFiles/glogbase.dir/src/raw_logging.cc.s

glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o: glog/glog-src/src/symbolize.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o -MF CMakeFiles/glogbase.dir/src/symbolize.cc.o.d -o CMakeFiles/glogbase.dir/src/symbolize.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/symbolize.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/symbolize.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/symbolize.cc > CMakeFiles/glogbase.dir/src/symbolize.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/symbolize.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/symbolize.cc -o CMakeFiles/glogbase.dir/src/symbolize.cc.s

glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o: glog/glog-src/src/utilities.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o -MF CMakeFiles/glogbase.dir/src/utilities.cc.o.d -o CMakeFiles/glogbase.dir/src/utilities.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/utilities.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/utilities.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/utilities.cc > CMakeFiles/glogbase.dir/src/utilities.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/utilities.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/utilities.cc -o CMakeFiles/glogbase.dir/src/utilities.cc.s

glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o: glog/glog-src/src/vlog_is_on.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o -MF CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o.d -o CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/vlog_is_on.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/vlog_is_on.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/vlog_is_on.cc > CMakeFiles/glogbase.dir/src/vlog_is_on.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/vlog_is_on.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/vlog_is_on.cc -o CMakeFiles/glogbase.dir/src/vlog_is_on.cc.s

glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/flags.make
glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o: glog/glog-src/src/signalhandler.cc
glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o: glog/glog-build/CMakeFiles/glogbase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o -MF CMakeFiles/glogbase.dir/src/signalhandler.cc.o.d -o CMakeFiles/glogbase.dir/src/signalhandler.cc.o -c /home/boris/cpp-advanced-hse/build/glog/glog-src/src/signalhandler.cc

glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glogbase.dir/src/signalhandler.cc.i"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boris/cpp-advanced-hse/build/glog/glog-src/src/signalhandler.cc > CMakeFiles/glogbase.dir/src/signalhandler.cc.i

glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glogbase.dir/src/signalhandler.cc.s"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boris/cpp-advanced-hse/build/glog/glog-src/src/signalhandler.cc -o CMakeFiles/glogbase.dir/src/signalhandler.cc.s

glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o
glogbase: glog/glog-build/CMakeFiles/glogbase.dir/build.make
.PHONY : glogbase

# Rule to build all files generated by this target.
glog/glog-build/CMakeFiles/glogbase.dir/build: glogbase
.PHONY : glog/glog-build/CMakeFiles/glogbase.dir/build

glog/glog-build/CMakeFiles/glogbase.dir/clean:
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && $(CMAKE_COMMAND) -P CMakeFiles/glogbase.dir/cmake_clean.cmake
.PHONY : glog/glog-build/CMakeFiles/glogbase.dir/clean

glog/glog-build/CMakeFiles/glogbase.dir/depend:
	cd /home/boris/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/build/glog/glog-src /home/boris/cpp-advanced-hse/build /home/boris/cpp-advanced-hse/build/glog/glog-build /home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glog/glog-build/CMakeFiles/glogbase.dir/depend

