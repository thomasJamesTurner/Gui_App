# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/roko/Development/Projects/Gui_App

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roko/Development/Projects/Gui_App/Build

# Include any dependencies generated for this target.
include CMakeFiles/Terminal_Logger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Terminal_Logger.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Terminal_Logger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Terminal_Logger.dir/flags.make

CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o: CMakeFiles/Terminal_Logger.dir/flags.make
CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o: /home/roko/Development/Projects/Gui_App/Dependancies/Includes/glad.c
CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o: CMakeFiles/Terminal_Logger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/roko/Development/Projects/Gui_App/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o -MF CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o.d -o CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o -c /home/roko/Development/Projects/Gui_App/Dependancies/Includes/glad.c

CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/roko/Development/Projects/Gui_App/Dependancies/Includes/glad.c > CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.i

CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/roko/Development/Projects/Gui_App/Dependancies/Includes/glad.c -o CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.s

CMakeFiles/Terminal_Logger.dir/src/main.cpp.o: CMakeFiles/Terminal_Logger.dir/flags.make
CMakeFiles/Terminal_Logger.dir/src/main.cpp.o: /home/roko/Development/Projects/Gui_App/src/main.cpp
CMakeFiles/Terminal_Logger.dir/src/main.cpp.o: CMakeFiles/Terminal_Logger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/roko/Development/Projects/Gui_App/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Terminal_Logger.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Terminal_Logger.dir/src/main.cpp.o -MF CMakeFiles/Terminal_Logger.dir/src/main.cpp.o.d -o CMakeFiles/Terminal_Logger.dir/src/main.cpp.o -c /home/roko/Development/Projects/Gui_App/src/main.cpp

CMakeFiles/Terminal_Logger.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Terminal_Logger.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roko/Development/Projects/Gui_App/src/main.cpp > CMakeFiles/Terminal_Logger.dir/src/main.cpp.i

CMakeFiles/Terminal_Logger.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Terminal_Logger.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roko/Development/Projects/Gui_App/src/main.cpp -o CMakeFiles/Terminal_Logger.dir/src/main.cpp.s

# Object files for target Terminal_Logger
Terminal_Logger_OBJECTS = \
"CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o" \
"CMakeFiles/Terminal_Logger.dir/src/main.cpp.o"

# External object files for target Terminal_Logger
Terminal_Logger_EXTERNAL_OBJECTS =

/home/roko/Development/Projects/Gui_App/Bin/Terminal_Logger: CMakeFiles/Terminal_Logger.dir/Dependancies/Includes/glad.c.o
/home/roko/Development/Projects/Gui_App/Bin/Terminal_Logger: CMakeFiles/Terminal_Logger.dir/src/main.cpp.o
/home/roko/Development/Projects/Gui_App/Bin/Terminal_Logger: CMakeFiles/Terminal_Logger.dir/build.make
/home/roko/Development/Projects/Gui_App/Bin/Terminal_Logger: CMakeFiles/Terminal_Logger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/roko/Development/Projects/Gui_App/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/roko/Development/Projects/Gui_App/Bin/Terminal_Logger"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Terminal_Logger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Terminal_Logger.dir/build: /home/roko/Development/Projects/Gui_App/Bin/Terminal_Logger
.PHONY : CMakeFiles/Terminal_Logger.dir/build

CMakeFiles/Terminal_Logger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Terminal_Logger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Terminal_Logger.dir/clean

CMakeFiles/Terminal_Logger.dir/depend:
	cd /home/roko/Development/Projects/Gui_App/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roko/Development/Projects/Gui_App /home/roko/Development/Projects/Gui_App /home/roko/Development/Projects/Gui_App/Build /home/roko/Development/Projects/Gui_App/Build /home/roko/Development/Projects/Gui_App/Build/CMakeFiles/Terminal_Logger.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Terminal_Logger.dir/depend

