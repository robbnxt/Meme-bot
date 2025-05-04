cmake_minimum_required(VERSION 3.10)
project(DiscordMemeBot)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(DPP REQUIRED)
find_package(nlohmann_json REQUIRED)
find_package(cpr REQUIRED)
find_package(Threads REQUIRED)

# Add the executable
add_executable(meme_bot main.cpp)

# Link libraries
target_link_libraries(meme_bot PRIVATE
    dpp
    nlohmann_json::nlohmann_json
    cpr::cpr
    Threads::Threads
)

# Copy config.json to the build directory
configure_file(${CMAKE_SOURCE_DIR}/config.json ${CMAKE_BINARY_DIR}/config.json COPYONLY)