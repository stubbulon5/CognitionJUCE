#!/bin/bash

mkdir -p build_debug
cd build_debug
cmake .. && cmake --build . --config Debug
open ./Cognition_artefacts/Cognition.app
