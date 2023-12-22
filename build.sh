#!/bin/bash

# Make sure the pico sdk import cmake file is present
if [[ -e pico_sdk_import.cmake ]]; then
    cp lib/pico-sdk/external/pico_sdk_import.cmake pico_sdk_import.cmake
fi

if [ -d build ]; then
    rm -rf build
fi

if [ ! -d build ]; then
    mkdir build
fi

cd build
export PICO_SDK_PATH=../lib/pico-sdk
cmake ..
make
