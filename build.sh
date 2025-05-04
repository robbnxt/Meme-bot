#!/bin/bash

# Create build directory if it doesn't exist
mkdir -p build
cd build

# Run CMake
cmake ..

# Build the project
cmake --build . -- -j$(nproc)

echo "Build complete. The executable is located in the build directory."