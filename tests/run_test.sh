#!/bin/bash

# Go to repo root (one level up from tests/)
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Paths
INCLUDE_DIR="${ROOT_DIR}/include"
SRC_DIR="${ROOT_DIR}/src"
TESTS_DIR="${ROOT_DIR}/tests"

# Build codec_test
gcc -std=c11 -Wall -Wextra \
    -I"${INCLUDE_DIR}" \
    -I"${INCLUDE_DIR}/lora" \
    "${SRC_DIR}/lora_codec.c" \
    "${SRC_DIR}/lora_engine.c" \
    "${TESTS_DIR}/codec_test.c" \
    -o "${TESTS_DIR}/codec_test"

# Run it
"${TESTS_DIR}/codec_test"
