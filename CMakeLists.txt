cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(SOURCES
    calculator.cpp
    calculator.h
    test.cpp  
)

add_executable(Calculator ${SOURCES})
