# Define minimal required version of CMake.
cmake_minimum_required(VERSION "3.25")

# Project definition
project(
	test
	VERSION 1.0
	LANGUAGES C CXX ASM
)

# Include the definition of the slc_test target,
# which contains the content of the SLC project
include(test.cmake)

add_executable(test
    # Add additional sources here
)

target_include_directories(test PUBLIC
    # Add additional include paths here
)

target_compile_definitions(test PUBLIC
    # Add additional macros here
)

target_compile_options(test PUBLIC
    # Set additional compiler flags here
)

target_link_options(test PUBLIC
    # Set additional linker flags here
    -u _printf_float
)

# Link with the content defined in the SLC project
target_link_libraries(test PRIVATE
    slc_test
)

# Include managed project content if available
include(test_project.cmake OPTIONAL RESULT_VARIABLE managed_project)
if(managed_project)
    message(STATUS "Using managed project content from ${managed_project}")
endif()

# Force the gcc linker command
set_target_properties(test PROPERTIES LINKER_LANGUAGE C)

# Create .bin, .hex and .s37 artifacts after building the project
add_custom_command(TARGET test
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O srec "$<TARGET_FILE:test>" "$<TARGET_FILE_DIR:test>/$<TARGET_FILE_BASE_NAME:test>.s37"
    COMMAND ${CMAKE_OBJCOPY} -O ihex "$<TARGET_FILE:test>" "$<TARGET_FILE_DIR:test>/$<TARGET_FILE_BASE_NAME:test>.hex"
    COMMAND ${CMAKE_OBJCOPY} -O binary "$<TARGET_FILE:test>" "$<TARGET_FILE_DIR:test>/$<TARGET_FILE_BASE_NAME:test>.bin" 
)

# Run post-build pipeline to perform additional post-processing
if(post_build_command)
add_custom_command(TARGET test
    POST_BUILD
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/..
    COMMAND ${post_build_command}
)
endif()