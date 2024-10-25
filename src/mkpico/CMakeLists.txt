cmake_minimum_required(VERSION 3.12)

set(PROJECT_NAME example)
set(FREERTOS_KERNEL_PATH /lib/FreeRTOS/FreeRTOS-Kernel)

include(pico_sdk_import.cmake)
include(${FREERTOS_KERNEL_PATH}/portable/ThirdParty/GCC/RP2040/FreeRTOS_Kernel_import.cmake)

project(${PROJECT_NAME})

pico_sdk_init()

add_subdirectory(src)
