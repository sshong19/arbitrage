cmake_minimum_required(VERSION 3.6)
project(socket)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        ClientSocket.cpp
        ClientSocket.h
        ClientSocket.o
        Makefile
        simple_client
        simple_client_main.cpp
        simple_client_main.o
        Socket.cpp
        Socket.h
        Socket.o
        SocketException.h CurrencyMarket.cpp CurrencyMarket.h)

add_executable(socket ${SOURCE_FILES})