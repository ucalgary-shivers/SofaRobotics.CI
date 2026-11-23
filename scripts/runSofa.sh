#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

usage() {
    echo "Usage: runSofa.sh <build-dir>"
}

if [ "$#" -ge 1 ]; then
    BUILD_DIR="$(cd "$1" && pwd)"
else
    usage; exit 1
fi

echo "--------------- setup-ninja-package.sh vars ---------------"
echo "BUILD_DIR = $BUILD_DIR"
echo "-------------------------------------------------"

source emsdk/emsdk_env.sh
emrun --browser chrome --browser_args="--auto-open-devtools-for-tabs" $BUILD_DIR/bin/runSofa.html
