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

# Include any dependencies generated for this target.
include CMakeFiles/FaceRecognitionProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FaceRecognitionProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FaceRecognitionProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FaceRecognitionProject.dir/flags.make

FaceRecognitionProject_autogen/timestamp: /usr/lib/qt5/bin/moc
FaceRecognitionProject_autogen/timestamp: CMakeFiles/FaceRecognitionProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/serif/FaceRecognitionProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target FaceRecognitionProject"
	/usr/bin/cmake -E cmake_autogen /home/serif/FaceRecognitionProject/build/CMakeFiles/FaceRecognitionProject_autogen.dir/AutogenInfo.json ""
	/usr/bin/cmake -E touch /home/serif/FaceRecognitionProject/build/FaceRecognitionProject_autogen/timestamp

CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o: CMakeFiles/FaceRecognitionProject.dir/flags.make
CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o: FaceRecognitionProject_autogen/mocs_compilation.cpp
CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o: CMakeFiles/FaceRecognitionProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/serif/FaceRecognitionProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o -MF CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o -c /home/serif/FaceRecognitionProject/build/FaceRecognitionProject_autogen/mocs_compilation.cpp

CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/serif/FaceRecognitionProject/build/FaceRecognitionProject_autogen/mocs_compilation.cpp > CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.i

CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/serif/FaceRecognitionProject/build/FaceRecognitionProject_autogen/mocs_compilation.cpp -o CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.s

CMakeFiles/FaceRecognitionProject.dir/main.cpp.o: CMakeFiles/FaceRecognitionProject.dir/flags.make
CMakeFiles/FaceRecognitionProject.dir/main.cpp.o: /home/serif/FaceRecognitionProject/main.cpp
CMakeFiles/FaceRecognitionProject.dir/main.cpp.o: CMakeFiles/FaceRecognitionProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/serif/FaceRecognitionProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FaceRecognitionProject.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FaceRecognitionProject.dir/main.cpp.o -MF CMakeFiles/FaceRecognitionProject.dir/main.cpp.o.d -o CMakeFiles/FaceRecognitionProject.dir/main.cpp.o -c /home/serif/FaceRecognitionProject/main.cpp

CMakeFiles/FaceRecognitionProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FaceRecognitionProject.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/serif/FaceRecognitionProject/main.cpp > CMakeFiles/FaceRecognitionProject.dir/main.cpp.i

CMakeFiles/FaceRecognitionProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FaceRecognitionProject.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/serif/FaceRecognitionProject/main.cpp -o CMakeFiles/FaceRecognitionProject.dir/main.cpp.s

# Object files for target FaceRecognitionProject
FaceRecognitionProject_OBJECTS = \
"CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/FaceRecognitionProject.dir/main.cpp.o"

# External object files for target FaceRecognitionProject
FaceRecognitionProject_EXTERNAL_OBJECTS =

FaceRecognitionProject: CMakeFiles/FaceRecognitionProject.dir/FaceRecognitionProject_autogen/mocs_compilation.cpp.o
FaceRecognitionProject: CMakeFiles/FaceRecognitionProject.dir/main.cpp.o
FaceRecognitionProject: CMakeFiles/FaceRecognitionProject.dir/build.make
FaceRecognitionProject: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.13
FaceRecognitionProject: /usr/local/lib/libopencv_gapi.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_stitching.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_aruco.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_bgsegm.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_bioinspired.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_ccalib.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_dnn_objdetect.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_dnn_superres.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_dpm.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_face.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_freetype.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_fuzzy.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_hfs.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_img_hash.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_intensity_transform.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_line_descriptor.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_mcc.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_quality.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_rapid.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_reg.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_rgbd.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_saliency.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_signal.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_stereo.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_structured_light.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_superres.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_surface_matching.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_tracking.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_videostab.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_wechat_qrcode.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_xfeatures2d.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_xobjdetect.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_xphoto.so.4.10.0
FaceRecognitionProject: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.13
FaceRecognitionProject: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.13
FaceRecognitionProject: /usr/local/lib/libopencv_shape.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_highgui.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_datasets.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_plot.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_text.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_ml.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_phase_unwrapping.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_optflow.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_ximgproc.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_video.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_videoio.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_objdetect.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_calib3d.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_dnn.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_features2d.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_flann.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_photo.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_imgproc.so.4.10.0
FaceRecognitionProject: /usr/local/lib/libopencv_core.so.4.10.0
FaceRecognitionProject: CMakeFiles/FaceRecognitionProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/serif/FaceRecognitionProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable FaceRecognitionProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FaceRecognitionProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FaceRecognitionProject.dir/build: FaceRecognitionProject
.PHONY : CMakeFiles/FaceRecognitionProject.dir/build

CMakeFiles/FaceRecognitionProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FaceRecognitionProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FaceRecognitionProject.dir/clean

CMakeFiles/FaceRecognitionProject.dir/depend: FaceRecognitionProject_autogen/timestamp
	cd /home/serif/FaceRecognitionProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/serif/FaceRecognitionProject /home/serif/FaceRecognitionProject /home/serif/FaceRecognitionProject/build /home/serif/FaceRecognitionProject/build /home/serif/FaceRecognitionProject/build/CMakeFiles/FaceRecognitionProject.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/FaceRecognitionProject.dir/depend

