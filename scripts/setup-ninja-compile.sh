#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

usage() {
    echo "Usage: setup-ninja-compile.sh <build-dir>"
}

if [ "$#" -ge 1 ]; then
    BUILD_DIR="$(cd "$1" && pwd)"
else
    usage; exit 1
fi

echo "--------------- setup-ninja-compile.sh default parallel jobs ---------------"
ninja -h 2>&1 | grep parallel || echo
echo "-------------------------------------------------"

echo "--------------- setup-ninja-compile.sh vars ---------------"
echo "BUILD_DIR = $BUILD_DIR"
echo "-------------------------------------------------"

ninja -C $BUILD_DIR