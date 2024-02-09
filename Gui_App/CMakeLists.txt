cmake_minimum_required(VERSION 3.27.9)

# if using project template change project parameters to the root directory of project file (root dir == project name)
project(Gui)
# change no other parameters unless not useing project template  

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../Bin)
file(GLOB SOURCES 
"./src/*.cpp/"
"./src/*.c/"  
"./Dependancies/Includes/*.c/" 
"./Dependancies/Includes/*.cpp/" 
"./Dependancies/Includes/../*.c/" 
"./Dependancies/Includes/../*.cpp/")

include_directories(./Headers/ ./Dependancies/Includes/)
add_executable(${PROJECT_NAME} ${SOURCES})
#add lib names after $(PROJECT_NAME) to link
target_link_libraries(${PROJECT_NAME} glfw)
install(TARGETS ${PROJECT_NAME} DESTINATION bin)