#!/bin/bash

# USER SETTINGS
PICO_PATH=/Volumes/RPI-RP2
PROGRAM_NAME=testing

# Check the build folder is present
if [ ! -d build ]; then
    echo "Failed: Unable to locate build"
    exit 1
fi

if [[ ! -e build/${PROGRAM_NAME}.uf2 ]]; then
    echo "Failed: Unable to locate uf2 file"
    exit 1
fi

if [[ ! -d ${PICO_PATH} ]]; then
    echo "Failed: Unable to locate pico make sure it is in bootloader mode"
    exit 1
fi

cp build/${PROGRAM_NAME}.uf2 ${PICO_PATH}
echo "Success: Copied build"

exit 0
