cmake_minimum_required(VERSION 3.0)

find_package(JetsonGPIO)
add_executable(motor_test src/motor_test)
target_link_libraries(motor_test JetsonGPIO::JetsonGPIO)