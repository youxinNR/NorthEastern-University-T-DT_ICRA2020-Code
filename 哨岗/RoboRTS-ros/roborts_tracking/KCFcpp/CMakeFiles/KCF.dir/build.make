# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp

# Include any dependencies generated for this target.
include CMakeFiles/KCF.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/KCF.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/KCF.dir/flags.make

CMakeFiles/KCF.dir/src/kcftracker.cpp.o: CMakeFiles/KCF.dir/flags.make
CMakeFiles/KCF.dir/src/kcftracker.cpp.o: src/kcftracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/KCF.dir/src/kcftracker.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KCF.dir/src/kcftracker.cpp.o -c /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/kcftracker.cpp

CMakeFiles/KCF.dir/src/kcftracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KCF.dir/src/kcftracker.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/kcftracker.cpp > CMakeFiles/KCF.dir/src/kcftracker.cpp.i

CMakeFiles/KCF.dir/src/kcftracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KCF.dir/src/kcftracker.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/kcftracker.cpp -o CMakeFiles/KCF.dir/src/kcftracker.cpp.s

CMakeFiles/KCF.dir/src/kcftracker.cpp.o.requires:

.PHONY : CMakeFiles/KCF.dir/src/kcftracker.cpp.o.requires

CMakeFiles/KCF.dir/src/kcftracker.cpp.o.provides: CMakeFiles/KCF.dir/src/kcftracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/KCF.dir/build.make CMakeFiles/KCF.dir/src/kcftracker.cpp.o.provides.build
.PHONY : CMakeFiles/KCF.dir/src/kcftracker.cpp.o.provides

CMakeFiles/KCF.dir/src/kcftracker.cpp.o.provides.build: CMakeFiles/KCF.dir/src/kcftracker.cpp.o


CMakeFiles/KCF.dir/src/fhog.cpp.o: CMakeFiles/KCF.dir/flags.make
CMakeFiles/KCF.dir/src/fhog.cpp.o: src/fhog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/KCF.dir/src/fhog.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KCF.dir/src/fhog.cpp.o -c /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/fhog.cpp

CMakeFiles/KCF.dir/src/fhog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KCF.dir/src/fhog.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/fhog.cpp > CMakeFiles/KCF.dir/src/fhog.cpp.i

CMakeFiles/KCF.dir/src/fhog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KCF.dir/src/fhog.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/fhog.cpp -o CMakeFiles/KCF.dir/src/fhog.cpp.s

CMakeFiles/KCF.dir/src/fhog.cpp.o.requires:

.PHONY : CMakeFiles/KCF.dir/src/fhog.cpp.o.requires

CMakeFiles/KCF.dir/src/fhog.cpp.o.provides: CMakeFiles/KCF.dir/src/fhog.cpp.o.requires
	$(MAKE) -f CMakeFiles/KCF.dir/build.make CMakeFiles/KCF.dir/src/fhog.cpp.o.provides.build
.PHONY : CMakeFiles/KCF.dir/src/fhog.cpp.o.provides

CMakeFiles/KCF.dir/src/fhog.cpp.o.provides.build: CMakeFiles/KCF.dir/src/fhog.cpp.o


CMakeFiles/KCF.dir/src/runtracker.cpp.o: CMakeFiles/KCF.dir/flags.make
CMakeFiles/KCF.dir/src/runtracker.cpp.o: src/runtracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/KCF.dir/src/runtracker.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KCF.dir/src/runtracker.cpp.o -c /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/runtracker.cpp

CMakeFiles/KCF.dir/src/runtracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KCF.dir/src/runtracker.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/runtracker.cpp > CMakeFiles/KCF.dir/src/runtracker.cpp.i

CMakeFiles/KCF.dir/src/runtracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KCF.dir/src/runtracker.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/src/runtracker.cpp -o CMakeFiles/KCF.dir/src/runtracker.cpp.s

CMakeFiles/KCF.dir/src/runtracker.cpp.o.requires:

.PHONY : CMakeFiles/KCF.dir/src/runtracker.cpp.o.requires

CMakeFiles/KCF.dir/src/runtracker.cpp.o.provides: CMakeFiles/KCF.dir/src/runtracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/KCF.dir/build.make CMakeFiles/KCF.dir/src/runtracker.cpp.o.provides.build
.PHONY : CMakeFiles/KCF.dir/src/runtracker.cpp.o.provides

CMakeFiles/KCF.dir/src/runtracker.cpp.o.provides.build: CMakeFiles/KCF.dir/src/runtracker.cpp.o


# Object files for target KCF
KCF_OBJECTS = \
"CMakeFiles/KCF.dir/src/kcftracker.cpp.o" \
"CMakeFiles/KCF.dir/src/fhog.cpp.o" \
"CMakeFiles/KCF.dir/src/runtracker.cpp.o"

# External object files for target KCF
KCF_EXTERNAL_OBJECTS =

KCF: CMakeFiles/KCF.dir/src/kcftracker.cpp.o
KCF: CMakeFiles/KCF.dir/src/fhog.cpp.o
KCF: CMakeFiles/KCF.dir/src/runtracker.cpp.o
KCF: CMakeFiles/KCF.dir/build.make
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
KCF: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
KCF: CMakeFiles/KCF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable KCF"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KCF.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/KCF.dir/build: KCF

.PHONY : CMakeFiles/KCF.dir/build

CMakeFiles/KCF.dir/requires: CMakeFiles/KCF.dir/src/kcftracker.cpp.o.requires
CMakeFiles/KCF.dir/requires: CMakeFiles/KCF.dir/src/fhog.cpp.o.requires
CMakeFiles/KCF.dir/requires: CMakeFiles/KCF.dir/src/runtracker.cpp.o.requires

.PHONY : CMakeFiles/KCF.dir/requires

CMakeFiles/KCF.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/KCF.dir/cmake_clean.cmake
.PHONY : CMakeFiles/KCF.dir/clean

CMakeFiles/KCF.dir/depend:
	cd /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp /home/tdt/roborts_ws/src/RoboRTS/roborts_tracking/KCFcpp/CMakeFiles/KCF.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/KCF.dir/depend

