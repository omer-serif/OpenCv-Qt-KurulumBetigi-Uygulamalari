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
CMAKE_SOURCE_DIR = /home/serif/ImageGalleryProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/serif/ImageGalleryProject/build

# Utility rule file for ImageGalleryProject_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/ImageGalleryProject_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ImageGalleryProject_autogen.dir/progress.make

CMakeFiles/ImageGalleryProject_autogen: ImageGalleryProject_autogen/timestamp

ImageGalleryProject_autogen/timestamp: /usr/lib/qt5/bin/moc
ImageGalleryProject_autogen/timestamp: CMakeFiles/ImageGalleryProject_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/serif/ImageGalleryProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target ImageGalleryProject"
	/usr/bin/cmake -E cmake_autogen /home/serif/ImageGalleryProject/build/CMakeFiles/ImageGalleryProject_autogen.dir/AutogenInfo.json ""
	/usr/bin/cmake -E touch /home/serif/ImageGalleryProject/build/ImageGalleryProject_autogen/timestamp

ImageGalleryProject_autogen: CMakeFiles/ImageGalleryProject_autogen
ImageGalleryProject_autogen: ImageGalleryProject_autogen/timestamp
ImageGalleryProject_autogen: CMakeFiles/ImageGalleryProject_autogen.dir/build.make
.PHONY : ImageGalleryProject_autogen

# Rule to build all files generated by this target.
CMakeFiles/ImageGalleryProject_autogen.dir/build: ImageGalleryProject_autogen
.PHONY : CMakeFiles/ImageGalleryProject_autogen.dir/build

CMakeFiles/ImageGalleryProject_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ImageGalleryProject_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ImageGalleryProject_autogen.dir/clean

CMakeFiles/ImageGalleryProject_autogen.dir/depend:
	cd /home/serif/ImageGalleryProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/serif/ImageGalleryProject /home/serif/ImageGalleryProject /home/serif/ImageGalleryProject/build /home/serif/ImageGalleryProject/build /home/serif/ImageGalleryProject/build/CMakeFiles/ImageGalleryProject_autogen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ImageGalleryProject_autogen.dir/depend

