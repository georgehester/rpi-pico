#!/bin/bash

# Check the build folder is present
if [ ! -d build ]; then
    echo "Failed: Unable to locate build make sure to run cmake first"
    exit 1
fi

# Change to build folder and run make to update the build output
cd build
make >/dev/null

# Check make was successful
if [[ $? -ne 0 ]]; then
    echo "Failed: Make failed to execute"
    exit 1
fi

echo "Success: Make executed successfully"

exit 0
