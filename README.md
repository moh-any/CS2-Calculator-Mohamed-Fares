# Advanced C++ Calculator

## Overview
This project is an advanced C++ calculator that supports basic arithmetic operations, factorial, GCD, LCM, random number generation, and expression evaluation using infix-to-postfix conversion. It is implemented in a modular format with separate header and source files.

## Features
- **Basic Operations:** Addition, subtraction, multiplication, and division.
- **Factorial Calculation:** Computes n! recursively.
- **GCD & LCM:** Calculates the greatest common divisor and least common multiple.
- **Random Number Generation:** Generates a random number within a given range.
- **Expression Evaluation:** Parses and evaluates mathematical expressions with parentheses and operator precedence.

## File Structure
- **calculator.h:** Header file containing function declarations.
- **calculator.cpp:** Implementation of the calculator functions.
- **test.cpp:** Test file demonstrating how to use the library functions.

## Build Instructions

1. **Create a build directory and navigate into it:**
   mkdir build
   cd build

2. **Run CMake to configure the project:**
   cmake ..

3. **Build the project using make:**
   make

This process will build both the `calculator` library and the `calculator_test` executable.

## Running the Test Executable

After the build completes, run the test executable from the `build` directory:

./calculator_test

This will execute the tests and display the outputs from various calculator functions.