cmake_minimum_required(VERSION 3.7.0)

project(CICD)

set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 1)
set(PROJECT_VERSION_PATCH 0)

set(CMAKE_C_FLAGS "-D_GNU_SOURCE -Wall -std=c99")
set (CMAKE_EXE_LINKER_FLAGS "-rdynamic")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_BUILD_TYPE Debug)

enable_testing()

add_subdirectory(src/lib)
add_subdirectory(tests)

add_executable(cicd "")
target_link_libraries(cicd my_math)
target_include_directories(cicd 
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/src/lib
    )
target_sources(cicd 
   PUBLIC 
   ${CMAKE_CURRENT_LIST_DIR}/src/main.c 
)


