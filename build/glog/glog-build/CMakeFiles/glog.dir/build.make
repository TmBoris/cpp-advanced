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
include glog/glog-build/CMakeFiles/glog.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glog/glog-build/CMakeFiles/glog.dir/compiler_depend.make

# Include the progress variables for this target.
include glog/glog-build/CMakeFiles/glog.dir/progress.make

# Include the compile flags for this target's objects.
include glog/glog-build/CMakeFiles/glog.dir/flags.make

# Object files for target glog
glog_OBJECTS =

# External object files for target glog
glog_EXTERNAL_OBJECTS = \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o" \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o" \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o" \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o" \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o" \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o" \
"/home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o"

glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/demangle.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/logging.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/raw_logging.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/symbolize.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/utilities.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/vlog_is_on.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glogbase.dir/src/signalhandler.cc.o
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glog.dir/build.make
glog/glog-build/libglog.a: glog/glog-build/CMakeFiles/glog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boris/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libglog.a"
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && $(CMAKE_COMMAND) -P CMakeFiles/glog.dir/cmake_clean_target.cmake
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glog/glog-build/CMakeFiles/glog.dir/build: glog/glog-build/libglog.a
.PHONY : glog/glog-build/CMakeFiles/glog.dir/build

glog/glog-build/CMakeFiles/glog.dir/clean:
	cd /home/boris/cpp-advanced-hse/build/glog/glog-build && $(CMAKE_COMMAND) -P CMakeFiles/glog.dir/cmake_clean.cmake
.PHONY : glog/glog-build/CMakeFiles/glog.dir/clean

glog/glog-build/CMakeFiles/glog.dir/depend:
	cd /home/boris/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boris/cpp-advanced-hse /home/boris/cpp-advanced-hse/build/glog/glog-src /home/boris/cpp-advanced-hse/build /home/boris/cpp-advanced-hse/build/glog/glog-build /home/boris/cpp-advanced-hse/build/glog/glog-build/CMakeFiles/glog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glog/glog-build/CMakeFiles/glog.dir/depend

