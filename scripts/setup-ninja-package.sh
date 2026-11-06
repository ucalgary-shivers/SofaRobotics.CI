#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

usage() {
    echo "Usage: setup-ninja-package.sh <build-dir>"
}

if [ "$#" -ge 1 ]; then
    BUILD_DIR="$(cd "$1" && pwd)"
else
    usage; exit 1
fi

echo "--------------- setup-ninja-package.sh vars ---------------"
echo "BUILD_DIR = $BUILD_DIR"
echo "-------------------------------------------------"

ninja -C $BUILD_DIR package