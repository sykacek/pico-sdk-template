add_executable(${PROJECT_NAME}
    main.c
)

target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}
)

target_link_libraries(${PROJECT_NAME} 
    pico_stdlib 
    FreeRTOS-Kernel-Heap4 
    )

pico_add_extra_outputs(${PROJECT_NAME})
