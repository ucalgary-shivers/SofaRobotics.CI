#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

usage() {
    echo "Usage: setup-cmake-configure.sh <build-dir> <src-dir> <plugins-dir> <python-version>"
}

if [ "$#" -ge 4 ]; then
    BUILD_DIR="$(cd "$1" && pwd)"
    SRC_DIR="$(cd "$2" && pwd)"
    PLUGINS_DIR="$(cd "$3" && pwd)"
    PYTHON_VERSION="$4"
    PYTHON_MAJOR_MINOR="${PYTHON_VERSION%.*}"
    PYTHON_DIR="bin/python"
else
    usage; exit 1
fi

os="$(uname -s)"

echo "--------------- setup-cmake-configure.sh vars ---------------"
echo "BUILD_DIR = $BUILD_DIR"
echo "SRC_DIR = $SRC_DIR"
echo "PLUGINS_DIR = $PLUGINS_DIR"
echo "PYTHON_VERSION = $PYTHON_VERSION"
echo "-------------------------------------------------"

#############
# Options   #
#############

# Add Cmake option function
cmake_options=""
add-cmake-option() {
    cmake_options="$cmake_options $*"
}

# Build type and compiler
add-cmake-option "-DCMAKE_BUILD_TYPE=Release"

if [[ "$os" == MINGW* || "$os" == MSYS* || "$os" == CYGWIN* || "$os" == Windows_NT ]]; then
    add-cmake-option "-DCMAKE_C_COMPILER=cl"
    add-cmake-option "-DCMAKE_CXX_COMPILER=cl"
else
    add-cmake-option "-DCMAKE_C_COMPILER=gcc"
    add-cmake-option "-DCMAKE_CXX_COMPILER=g++"
fi

# Python
if [[ "$os" == MINGW* || "$os" == MSYS* || "$os" == CYGWIN* || "$os" == Windows_NT ]]; then
    add-cmake-option "-DPython_EXECUTABLE=$BUILD_DIR/$PYTHON_DIR/python.exe"
else
    add-cmake-option "-DPython_EXECUTABLE=$BUILD_DIR/$PYTHON_DIR/bin/python3"
fi

if [[ "$os" == Darwin ]]; then
    add-cmake-option "-DCMAKE_CXX_FLAGS=-flto=thin"
    add-cmake-option "-DCMAKE_SHARED_LINKER_FLAGS=-flto=thin"
    add-cmake-option "-DCMAKE_EXE_LINKER_FLAGS=-flto=thin"
fi
add-cmake-option "-DPython_ROOT_DIR=$BUILD_DIR/$PYTHON_DIR"
add-cmake-option "-DSOFAPYTHON3_LOAD_BUNDLED_PYTHON=ON"
add-cmake-option "-DSOFAPYTHON3_BUNDLED_PYTHON_PATH=$PYTHON_DIR"
if [[ "$os" == MINGW* || "$os" == MSYS* || "$os" == CYGWIN* || "$os" == Windows_NT ]]; then
    add-cmake-option "-Dpybind11_DIR=$BUILD_DIR/$PYTHON_DIR/Lib/site-packages/pybind11/share/cmake/pybind11"
else
    add-cmake-option "-Dpybind11_DIR=$BUILD_DIR/$PYTHON_DIR/lib/python$PYTHON_MAJOR_MINOR/site-packages/pybind11/share/cmake/pybind11"
fi

# Plugins
add-cmake-option "-DSOFA_EXTERNAL_DIRECTORIES=$PLUGINS_DIR"
add-cmake-option "-DPLUGIN_ARTICULATEDSYSTEMPLUGIN=ON"
add-cmake-option "-DSOFA_WITH_OPENGL=ON"

# Dependencies
if [[ "$os" == MINGW* || "$os" == MSYS* || "$os" == CYGWIN* || "$os" == Windows_NT ]]; then
    add-cmake-option "-DEIGEN3_ROOT=$EIGEN3_ROOT"
    add-cmake-option "-DBOOST_ROOT=$BOOST_ROOT"
fi

# Binaries 
add-cmake-option "-DSOFA_WITH_DEVTOOLS=OFF"
add-cmake-option "-DSOFA_DUMP_VISITOR_INFO=OFF"
add-cmake-option "-DSOFA_BUILD_RELEASE_PACKAGE=ON"
add-cmake-option \
    "-DCPACK_BINARY_IFW=OFF" "-DCPACK_BINARY_NSIS=OFF" "-DCPACK_BINARY_ZIP=OFF" \
    "-DCPACK_BINARY_BUNDLE=OFF" "-DCPACK_BINARY_DEB=OFF" "-DCPACK_BINARY_DRAGNDROP=OFF" \
    "-DCPACK_BINARY_FREEBSD=OFF" "-DCPACK_BINARY_OSXX11=OFF" "-DCPACK_BINARY_PACKAGEMAKER=OFF" \
    "-DCPACK_BINARY_PRODUCTBUILD=OFF" "-DCPACK_BINARY_RPM=OFF" "-DCPACK_BINARY_STGZ=OFF" \
    "-DCPACK_BINARY_TBZ2=OFF" "-DCPACK_BINARY_TGZ=OFF" "-DCPACK_BINARY_TXZ=OFF" \
    "-DCPACK_SOURCE_RPM=OFF" "-DCPACK_SOURCE_TBZ2=OFF" "-DCPACK_SOURCE_TGZ=OFF" \
    "-DCPACK_SOURCE_TXZ=OFF" "-DCPACK_SOURCE_TZ=OFF"
add-cmake-option "-DCPACK_GENERATOR=ZIP"
add-cmake-option "-DCPACK_BINARY_ZIP=ON"

add-cmake-option "--preset=minimal"

#############
# Configure #
#############

cmake -GNinja $cmake_options -B "$BUILD_DIR" -S "$SRC_DIR" | tee -a "cmake-output.txt"
