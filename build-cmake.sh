#!/bin/bash

# Check the pico sdk was installed
if [[ ! -e lib/pico-sdk/external/pico_sdk_import.cmake ]]; then
    echo "Failed: Make sure the pico-sdk is installed first"
    exit 1
fi

# Make sure the pico sdk import cmake file is present
if [[ ! -e pico_sdk_import.cmake ]]; then
    cp lib/pico-sdk/external/pico_sdk_import.cmake pico_sdk_import.cmake
fi

# Check that the build folder exists
if [ -d build ]; then
    rm -rf build
fi

# Make build folder if it doesn't exist
if [ ! -d build ]; then
    mkdir build
fi

# Change to build folder and execute cmake
cd build
cmake .. >/dev/null

# Check cmake was successful
if [[ $? -ne 0 ]]; then
    echo "Failed: CMake failed to execute"
    exit 1
fi

echo "Success: CMake executed successfully"

exit 0
