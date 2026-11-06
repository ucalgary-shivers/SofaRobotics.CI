#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

install_linux_dependencies() {
    sudo apt-get update 

    # Install build tools
    sudo apt -y install build-essential software-properties-common clang-14 cmake cmake-gui ninja-build ccache

    # Install dependencies
    sudo apt -y install libtinyxml2-dev libopengl0 libboost-all-dev libpng-dev libjpeg-dev libtiff-dev libglew-dev zlib1g-dev xorg-dev libgtk-3-dev libeigen3-dev

    echo "" > ./scripts/setup-variables.sh
}

install_windows_dependencies() {
    # Install dependencies using Chocolatey
    choco install boost-msvc-14.3 eigen ninja --no-progress --yes

    # Set environment variables for Boost and Eigen
    BOOST_PATH=$(ls -d /c/local/boost_* 2>/dev/null | head -n 1 || true)
    if [ -z "$BOOST_PATH" ]; then
        echo "Boost path not found" >&2
        exit 1
    fi

    EIGEN_INCLUDE=$(find $ChocolateyInstall/lib/eigen -type d -path "*/include/eigen3" | head -n 1 || true)
    if [ -z "$EIGEN_INCLUDE" ]; then
        EIGEN_INCLUDE=$(find $ChocolateyInstall/lib/eigen -type d -name "Eigen" | head -n 1 | sed 's|/Eigen$||' || true)
    fi

    if [ -z "$EIGEN_INCLUDE" ]; then
        echo "Eigen include path not found" >&2
        exit 1
    fi

    echo "export BOOST_ROOT=$(cygpath -w "$BOOST_PATH")" > ./scripts/setup-variables.sh
    echo "export EIGEN3_ROOT=$(cygpath -w "$EIGEN_INCLUDE")" >> ./scripts/setup-variables.sh
}

install_macos_dependencies() {
    # Install dependencies using Homebrew
    brew install -y boost eigen ninja tinyxml2 libpng libjpeg libtiff glew

    # Set environment variables for Boost and Eigen
    BOOST_PATH=$(brew --prefix boost)
    EIGEN_INCLUDE=$(brew --prefix eigen)/include/eigen3

    echo "export BOOST_ROOT=$BOOST_PATH" > ./scripts/setup-variables.sh
    echo "export EIGEN3_ROOT=$EIGEN_INCLUDE" >> ./scripts/setup-variables.sh
 

# Install build tools
os="$(uname -s)"
python_deps="numpy scipy pybind11"
python_exe=""

case "$os" in
    Linux)
        if [ -f /etc/debian_version ]; then
            install_linux_dependencies
            python_exe="./build/bin/python/bin/python3"
        else
            echo "Unsupported Linux distribution" >&2
            exit 1
        fi
        ;;
    MINGW*|MSYS*|CYGWIN*|Windows_NT)
        install_windows_dependencies
        python_exe="./build/bin/python/python.exe"
        ;;
    Darwin*)
        install_macos_dependencies
        python_exe="./build/bin/python/bin/python"
    ;;
    *)
        echo "Unsupported OS: $os" >&2
        exit 1
        ;;
    esac

# Python dependencies
PYTHONNOUSERSITE=1 ${python_exe} -m pip install --upgrade pip
PYTHONNOUSERSITE=1 ${python_exe} -m pip install ${python_deps}

# Custom requirements file if provided
if [[ -f "requirements.txt" ]]; then
    PYTHONNOUSERSITE=1 ${python_exe} -m pip install -r requirements.txt
fi
