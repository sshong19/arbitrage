# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sshong/Desktop/EC330/socket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sshong/Desktop/EC330/socket/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/socket.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socket.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket.dir/flags.make

CMakeFiles/socket.dir/ClientSocket.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/ClientSocket.cpp.o: ../ClientSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sshong/Desktop/EC330/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/socket.dir/ClientSocket.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/ClientSocket.cpp.o -c /Users/sshong/Desktop/EC330/socket/ClientSocket.cpp

CMakeFiles/socket.dir/ClientSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/ClientSocket.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sshong/Desktop/EC330/socket/ClientSocket.cpp > CMakeFiles/socket.dir/ClientSocket.cpp.i

CMakeFiles/socket.dir/ClientSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/ClientSocket.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sshong/Desktop/EC330/socket/ClientSocket.cpp -o CMakeFiles/socket.dir/ClientSocket.cpp.s

CMakeFiles/socket.dir/ClientSocket.cpp.o.requires:

.PHONY : CMakeFiles/socket.dir/ClientSocket.cpp.o.requires

CMakeFiles/socket.dir/ClientSocket.cpp.o.provides: CMakeFiles/socket.dir/ClientSocket.cpp.o.requires
	$(MAKE) -f CMakeFiles/socket.dir/build.make CMakeFiles/socket.dir/ClientSocket.cpp.o.provides.build
.PHONY : CMakeFiles/socket.dir/ClientSocket.cpp.o.provides

CMakeFiles/socket.dir/ClientSocket.cpp.o.provides.build: CMakeFiles/socket.dir/ClientSocket.cpp.o


CMakeFiles/socket.dir/simple_client_main.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/simple_client_main.cpp.o: ../simple_client_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sshong/Desktop/EC330/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/socket.dir/simple_client_main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/simple_client_main.cpp.o -c /Users/sshong/Desktop/EC330/socket/simple_client_main.cpp

CMakeFiles/socket.dir/simple_client_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/simple_client_main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sshong/Desktop/EC330/socket/simple_client_main.cpp > CMakeFiles/socket.dir/simple_client_main.cpp.i

CMakeFiles/socket.dir/simple_client_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/simple_client_main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sshong/Desktop/EC330/socket/simple_client_main.cpp -o CMakeFiles/socket.dir/simple_client_main.cpp.s

CMakeFiles/socket.dir/simple_client_main.cpp.o.requires:

.PHONY : CMakeFiles/socket.dir/simple_client_main.cpp.o.requires

CMakeFiles/socket.dir/simple_client_main.cpp.o.provides: CMakeFiles/socket.dir/simple_client_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/socket.dir/build.make CMakeFiles/socket.dir/simple_client_main.cpp.o.provides.build
.PHONY : CMakeFiles/socket.dir/simple_client_main.cpp.o.provides

CMakeFiles/socket.dir/simple_client_main.cpp.o.provides.build: CMakeFiles/socket.dir/simple_client_main.cpp.o


CMakeFiles/socket.dir/Socket.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/Socket.cpp.o: ../Socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sshong/Desktop/EC330/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/socket.dir/Socket.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/Socket.cpp.o -c /Users/sshong/Desktop/EC330/socket/Socket.cpp

CMakeFiles/socket.dir/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/Socket.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sshong/Desktop/EC330/socket/Socket.cpp > CMakeFiles/socket.dir/Socket.cpp.i

CMakeFiles/socket.dir/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/Socket.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sshong/Desktop/EC330/socket/Socket.cpp -o CMakeFiles/socket.dir/Socket.cpp.s

CMakeFiles/socket.dir/Socket.cpp.o.requires:

.PHONY : CMakeFiles/socket.dir/Socket.cpp.o.requires

CMakeFiles/socket.dir/Socket.cpp.o.provides: CMakeFiles/socket.dir/Socket.cpp.o.requires
	$(MAKE) -f CMakeFiles/socket.dir/build.make CMakeFiles/socket.dir/Socket.cpp.o.provides.build
.PHONY : CMakeFiles/socket.dir/Socket.cpp.o.provides

CMakeFiles/socket.dir/Socket.cpp.o.provides.build: CMakeFiles/socket.dir/Socket.cpp.o


CMakeFiles/socket.dir/CurrencyMarket.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/CurrencyMarket.cpp.o: ../CurrencyMarket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sshong/Desktop/EC330/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/socket.dir/CurrencyMarket.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/CurrencyMarket.cpp.o -c /Users/sshong/Desktop/EC330/socket/CurrencyMarket.cpp

CMakeFiles/socket.dir/CurrencyMarket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/CurrencyMarket.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sshong/Desktop/EC330/socket/CurrencyMarket.cpp > CMakeFiles/socket.dir/CurrencyMarket.cpp.i

CMakeFiles/socket.dir/CurrencyMarket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/CurrencyMarket.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sshong/Desktop/EC330/socket/CurrencyMarket.cpp -o CMakeFiles/socket.dir/CurrencyMarket.cpp.s

CMakeFiles/socket.dir/CurrencyMarket.cpp.o.requires:

.PHONY : CMakeFiles/socket.dir/CurrencyMarket.cpp.o.requires

CMakeFiles/socket.dir/CurrencyMarket.cpp.o.provides: CMakeFiles/socket.dir/CurrencyMarket.cpp.o.requires
	$(MAKE) -f CMakeFiles/socket.dir/build.make CMakeFiles/socket.dir/CurrencyMarket.cpp.o.provides.build
.PHONY : CMakeFiles/socket.dir/CurrencyMarket.cpp.o.provides

CMakeFiles/socket.dir/CurrencyMarket.cpp.o.provides.build: CMakeFiles/socket.dir/CurrencyMarket.cpp.o


# Object files for target socket
socket_OBJECTS = \
"CMakeFiles/socket.dir/ClientSocket.cpp.o" \
"CMakeFiles/socket.dir/simple_client_main.cpp.o" \
"CMakeFiles/socket.dir/Socket.cpp.o" \
"CMakeFiles/socket.dir/CurrencyMarket.cpp.o"

# External object files for target socket
socket_EXTERNAL_OBJECTS = \
"/Users/sshong/Desktop/EC330/socket/ClientSocket.o" \
"/Users/sshong/Desktop/EC330/socket/simple_client_main.o" \
"/Users/sshong/Desktop/EC330/socket/Socket.o"

socket: CMakeFiles/socket.dir/ClientSocket.cpp.o
socket: CMakeFiles/socket.dir/simple_client_main.cpp.o
socket: CMakeFiles/socket.dir/Socket.cpp.o
socket: CMakeFiles/socket.dir/CurrencyMarket.cpp.o
socket: ../ClientSocket.o
socket: ../simple_client_main.o
socket: ../Socket.o
socket: CMakeFiles/socket.dir/build.make
socket: CMakeFiles/socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sshong/Desktop/EC330/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable socket"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket.dir/build: socket

.PHONY : CMakeFiles/socket.dir/build

CMakeFiles/socket.dir/requires: CMakeFiles/socket.dir/ClientSocket.cpp.o.requires
CMakeFiles/socket.dir/requires: CMakeFiles/socket.dir/simple_client_main.cpp.o.requires
CMakeFiles/socket.dir/requires: CMakeFiles/socket.dir/Socket.cpp.o.requires
CMakeFiles/socket.dir/requires: CMakeFiles/socket.dir/CurrencyMarket.cpp.o.requires

.PHONY : CMakeFiles/socket.dir/requires

CMakeFiles/socket.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket.dir/clean

CMakeFiles/socket.dir/depend:
	cd /Users/sshong/Desktop/EC330/socket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sshong/Desktop/EC330/socket /Users/sshong/Desktop/EC330/socket /Users/sshong/Desktop/EC330/socket/cmake-build-debug /Users/sshong/Desktop/EC330/socket/cmake-build-debug /Users/sshong/Desktop/EC330/socket/cmake-build-debug/CMakeFiles/socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket.dir/depend

