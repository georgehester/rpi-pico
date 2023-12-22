# cmake_minimum_required(VERSION 3.13)
#
# include(pico_sdk_import.cmake)
#
# project(testing C CXX ASM)
#
# # export(PICO_SDK_PATH "lib/pico-sdk")
# set(CMAKE_C_STANDARD 11)
# set(CMAKE_CXX_STANDARD 17)
#
# pico_sdk_init()
#
# add_executable(output
# src/main.c
# )
#
# pico_add_extra_outputs(output)
#
# target_link_libraries(output pico_stdlib)

set(PROJECT testing)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE "Debug")

set(PICO_PLATFORM "rp2040")
set(PICO_BOARD "pico")

cmake_minimum_required(VERSION 3.12)

include(pico_sdk_import.cmake)

project(${PROJECT} C CXX ASM)

pico_sdk_init()

add_executable(${PROJECT} src/main.c)

target_link_libraries(${PROJECT} pico_stdlib)

pico_add_extra_outputs(${PROJECT})

pico_enable_stdio_usb(${PROJECT} 1)
pico_enable_stdio_uart(${PROJECT} 0)