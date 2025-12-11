cmake_minimum_required(VERSION 3.16)
project(lora_engine C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_library(lora_engine STATIC
    src/lora_codec.c
    src/lora_engine.c

    # LoRa.c depends on stm hal
    # for this reason, it won't be compiled in this cmakelists, for now
    # src/LoRa.c
)

target_include_directories(lora_engine
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/lora>
        $<INSTALL_INTERFACE:include>
)
