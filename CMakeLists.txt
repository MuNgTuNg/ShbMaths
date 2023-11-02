cmake_minimum_required(VERSION 3.2)
project(maths)

add_library( ShbMaths INTERFACE
    matrices.hpp
    vectors.hpp
)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
add_executable(${PROJECT_NAME} maths.cpp)

target_link_libraries(${PROJECT_NAME} 
    glm
    ShbMaths
)

add_subdirectory(glm)

target_include_directories(${PROJECT_NAME}
    PUBLIC glm/glm
    CMAKE_INCLUDE_CURRENT_DIR
)

