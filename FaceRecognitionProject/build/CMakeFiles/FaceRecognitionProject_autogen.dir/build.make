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
CMAKE_SOURCE_DIR = /home/serif/FaceRecognitionProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/serif/FaceRecognitionProject/build

# Utility rule file for FaceRecognitionProject_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/FaceRecognitionProject_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FaceRecognitionProject_autogen.dir/progress.make

CMakeFiles/FaceRecognitionProject_autogen: FaceRecognitionProject_autogen/timestamp

FaceRecognitionProject_autogen/timestamp: /usr/lib/qt5/bin/moc
FaceRecognitionProject_autogen/timestamp: CMakeFiles/FaceRecognitionProject_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/serif/FaceRecognitionProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target FaceRecognitionProject"
	/usr/bin/cmake -E cmake_autogen /home/serif/FaceRecognitionProject/build/CMakeFiles/FaceRecognitionProject_autogen.dir/AutogenInfo.json ""
	/usr/bin/cmake -E touch /home/serif/FaceRecognitionProject/build/FaceRecognitionProject_autogen/timestamp

FaceRecognitionProject_autogen: CMakeFiles/FaceRecognitionProject_autogen
FaceRecognitionProject_autogen: FaceRecognitionProject_autogen/timestamp
FaceRecognitionProject_autogen: CMakeFiles/FaceRecognitionProject_autogen.dir/build.make
.PHONY : FaceRecognitionProject_autogen

# Rule to build all files generated by this target.
CMakeFiles/FaceRecognitionProject_autogen.dir/build: FaceRecognitionProject_autogen
.PHONY : CMakeFiles/FaceRecognitionProject_autogen.dir/build

CMakeFiles/FaceRecognitionProject_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FaceRecognitionProject_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FaceRecognitionProject_autogen.dir/clean

CMakeFiles/FaceRecognitionProject_autogen.dir/depend:
	cd /home/serif/FaceRecognitionProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/serif/FaceRecognitionProject /home/serif/FaceRecognitionProject /home/serif/FaceRecognitionProject/build /home/serif/FaceRecognitionProject/build /home/serif/FaceRecognitionProject/build/CMakeFiles/FaceRecognitionProject_autogen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/FaceRecognitionProject_autogen.dir/depend
