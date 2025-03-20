cmake_minimum_required(VERSION 3.5.0)

set(BUILD_VERSION
    1.0.0
    CACHE STRING "Version of the product"
)

project(rpi4-apps VERSION 0.1.0 LANGUAGES C CXX)

#only install apps when built
set(CMAKE_SKIP_INSTALL_ALL_DEPENDENCY ON)

#export compiler commands
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")



# Add remaining source folders
add_subdirectory(apps)
