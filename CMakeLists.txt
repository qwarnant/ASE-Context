cmake_minimum_required(VERSION 2.8.4)
project(ASE_TP04)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    hw.c
    hw.h
    Makefile
    prodcons.c
    prodcons.h
    README.txt
    sem.c
    sem.h
    yield.c
    yield.h)

add_executable(ASE_TP04 ${SOURCE_FILES})