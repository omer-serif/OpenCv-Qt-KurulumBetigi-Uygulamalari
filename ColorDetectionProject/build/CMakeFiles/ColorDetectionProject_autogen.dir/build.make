# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/serif/ColorDetectionProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/serif/ColorDetectionProject/build

# Utility rule file for ColorDetectionProject_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/ColorDetectionProject_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ColorDetectionProject_autogen.dir/progress.make

CMakeFiles/ColorDetectionProject_autogen: ColorDetectionProject_autogen/timestamp

ColorDetectionProject_autogen/timestamp: /usr/lib/qt5/bin/moc
ColorDetectionProject_autogen/timestamp: CMakeFiles/ColorDetectionProject_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/serif/ColorDetectionProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target ColorDetectionProject"
	/usr/bin/cmake -E cmake_autogen /home/serif/ColorDetectionProject/build/CMakeFiles/ColorDetectionProject_autogen.dir/AutogenInfo.json ""
	/usr/bin/cmake -E touch /home/serif/ColorDetectionProject/build/ColorDetectionProject_autogen/timestamp

ColorDetectionProject_autogen: CMakeFiles/ColorDetectionProject_autogen
ColorDetectionProject_autogen: ColorDetectionProject_autogen/timestamp
ColorDetectionProject_autogen: CMakeFiles/ColorDetectionProject_autogen.dir/build.make
.PHONY : ColorDetectionProject_autogen

# Rule to build all files generated by this target.
CMakeFiles/ColorDetectionProject_autogen.dir/build: ColorDetectionProject_autogen
.PHONY : CMakeFiles/ColorDetectionProject_autogen.dir/build

CMakeFiles/ColorDetectionProject_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ColorDetectionProject_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ColorDetectionProject_autogen.dir/clean

CMakeFiles/ColorDetectionProject_autogen.dir/depend:
	cd /home/serif/ColorDetectionProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/serif/ColorDetectionProject /home/serif/ColorDetectionProject /home/serif/ColorDetectionProject/build /home/serif/ColorDetectionProject/build /home/serif/ColorDetectionProject/build/CMakeFiles/ColorDetectionProject_autogen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ColorDetectionProject_autogen.dir/depend

