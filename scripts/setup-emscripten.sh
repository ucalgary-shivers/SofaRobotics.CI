
#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

usage() {
    echo "Usage: setup-emscripten.sh <version>"
}

if [[ "$#" -ge 1 ]]; then
    version="$1"
else
    usage; exit 1
fi

echo "--------------- setup-emscripten.sh args ---------------"
echo "Running setup-emscripten.sh with the following parameters:"
echo "Version: $version"
echo "------------------------------------------------------"

# Clone emscripten SDK 
# https://emscripten.org/docs/getting_started/downloads.html
emsdk="https://github.com/emscripten-core/emsdk.git"
if [ -d "emsdk" ]; then
    echo "emsdk already cloned."
    pushd emsdk
    origin=$(git remote get-url origin)
    if [ ! $origin = $emsdk ]; then
        echo Updating origin from $origin to $emsdk
        git remote set-url origin $emsdk
        git fetch origin
        git reset HEAD --hard
        git checkout origin
    fi
    git pull
    popd
else
    git clone $emsdk emsdk
fi 

pushd emsdk
./emsdk install $version
./emsdk activate $version
popd
