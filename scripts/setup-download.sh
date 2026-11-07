#!/bin/bash

set -euo pipefail # Exit on error, unset variable, or pipe failure

usage() {
    echo "Usage: setup-download.sh <sofa-target> <plugins> <python-version> <requirements-file> <sofa-version>"
}

if [[ "$#" -ge 5 ]]; then
    sofa_target="$1"
    plugins_repos="$2"
    python_version="$3"
    requirements_file_url="$4"
    sofa_version="$5"
else
    usage; exit 1
fi

echo "--------------- setup-download.sh args ---------------"
echo "Running setup-download.sh with the following parameters:"
echo "SOFA target: $sofa_target"
echo "Plugins repos: $plugins_repos"
echo "Python version: $python_version"
echo "Requirements file: $requirements_file_url"
echo "------------------------------------------------------"

validate_plugins_repos() {
    # json looks like {"https://url.to/plugin/repo.git": "branch_or_commit", "https://url.to/another/plugin.git": "branch_or_commit"}
    local repos_json="$1"
    jq -e . >/dev/null 2>&1 <<<"$repos_json" || { echo "Invalid JSON for plugins repos: $repos_json" >&2; exit 1; }
    for repo in $(jq -r 'keys[]' <<<"$repos_json"); do
        if [[ ! "$repo" =~ ^https?:// ]]; then
            echo "Invalid plugin repo URL: $repo" >&2
            exit 1
        fi
    done
}

validate_python_version() {
    local version="$1"
    if [[ ! "$version" =~ ^3\.[0-9]{1,2}\.[0-9]{1,2}$ ]]; then
        echo "Invalid Python version: $version" >&2
        exit 1
    fi
}

validate_plugins_repos "$plugins_repos"
validate_python_version "$python_version"

# Directory structure:
# - src : SOFA source
# - plugins : plugins source with a CMakeLists file 
# - build/bin/python : Python build standalone from Astral (https://github.com/astral-sh/python-build-standalone/)

os="$(uname -s)"

# Clone sofa repository into src and use Compliance Robotics postinstall-fixup
sofa="https://github.com/sofa-framework/sofa.git"
if [ -d "src" ]; then
    echo "SOFA already cloned."
    pushd src
    origin=$(git remote get-url origin)
    if [ ! $origin = $sofa ]; then
        echo Updating origin from $origin to $sofa
        Da $sofa
        git fetch origin
        git reset HEAD --hard
        git checkout origin
    fi
    popd
else
    git clone $sofa src
fi 
git -C src checkout "$sofa_target"

tools="https://github.com/SofaComplianceRobotics/SofaRobotics.CI.Tools.git"
if [ -d "tools" ]; then
    echo "SofaRobotics.CI.Tools already cloned."
    pushd tools
    origin=$(git remote get-url origin)
    if [ ! $origin = $tools ]; then
        echo Updating origin from $origin to $tools
        git remote set-url origin $tools
        git fetch origin
        git reset HEAD --hard
        git checkout origin
    fi
    popd
else
    git clone $tools tools
fi 

if [ -d "src/tools/postinstall-fixup" ]; then
    rm -r src/tools/postinstall-fixup
    cp -r tools/postinstall-fixup src/tools/postinstall-fixup
fi

# Rename project to SOFA-Robotics
perl -pi -e 'BEGIN { $sofa_version = shift @ARGV } s/CPACK_PACKAGE_NAME "SOFA v\$\{CPACK_PACKAGE_VERSION\}/CPACK_PACKAGE_NAME "SOFA-Robotics-$sofa_version/g' "$sofa_version" src/CMakeLists.txt
perl -pi -e 'BEGIN { $sofa_version = shift @ARGV } s/CPACK_PACKAGE_FILE_NAME "SOFA_v\$\{CPACK_PACKAGE_VERSION\}/CPACK_PACKAGE_FILE_NAME "SOFA-Robotics-$sofa_version/g' "$sofa_version" src/CMakeLists.txt


# Plugins
mkdir -p plugins
# If plugins/CMakeLists.txt exists, remove it
if [ -f plugins/CMakeLists.txt ]; then
    rm plugins/CMakeLists.txt
fi
touch plugins/CMakeLists.txt
echo "cmake_minimum_required(VERSION 3.12)" >> plugins/CMakeLists.txt

# Clone plugins into the plugins directory
echo "$plugins_repos" | jq -r 'to_entries[] | "\(.key) \(.value)"' | while read -r repo head; do
    repo="${repo%$'\r'}"
    head="${head%$'\r'}"
    
    plugin_name=$(basename "$repo" .git)
    plugin_path="$plugin_name" # Default plugin path is the plugin name
    
    if [[ "$head" =~ ^\{.*\}$ ]]; then # head is a dict of {branch: branch_name, path: plugin_path_in_repo} 
        branch=$(jq -r '.branch' <<<"$head")
        plugin_path=$(jq -r '.path' <<<"$head")
        head="$branch"
    fi
    
    echo "Cloning plugin $plugin_name from $repo at $head into plugins/$plugin_name"
    tools="https://github.com/SofaComplianceRobotics/SofaRobotics.CI.Tools.git"
    if [ -d "plugins/$plugin_name" ]; then
        echo "$repo already cloned in plugins/$plugin_name"
        pushd plugins/$plugin_name
        origin=$(git remote get-url origin)
        if [ ! $origin = $repo ]; then
            echo Updating origin from $origin to $repo
            git remote set-url origin $repo
            git fetch origin
            git reset HEAD --hard
            git checkout origin
        fi
        popd
    else
        git clone "$repo" "plugins/$plugin_name"
    fi 
    
    if [ -n "$head" ]; then
        git -C "plugins/$plugin_name" checkout "$head"
    fi
    
    echo "sofa_add_subdirectory(plugin $plugin_path $plugin_name ON)" >> plugins/CMakeLists.txt
done

# Download Python
download_url=""

os="$(uname -s)"
release_date="20260901"
case "$os" in
    Linux)
        download_url="https://github.com/astral-sh/python-build-standalone/releases/download/${release_date}/cpython-${python_version}+${release_date}-x86_64-unknown-linux-gnu-install_only.tar.gz"
        ;;

    MINGW*|MSYS*|CYGWIN*|Windows_NT)
        download_url="https://github.com/astral-sh/python-build-standalone/releases/download/${release_date}/cpython-${python_version}+${release_date}-x86_64-pc-windows-msvc-install_only.tar.gz"
        ;;
    Darwin)
        download_url="https://github.com/astral-sh/python-build-standalone/releases/download/${release_date}/cpython-${python_version}+${release_date}-aarch64-apple-darwin-install_only.tar.gz"
        ;;
    *)
        echo "Unsupported OS: $os" >&2
        exit 1
        ;;
esac

if [ -f cpython-${python_version}+${release_date}.tar.gz ]; then
    echo "Python already downloaded from $download_url"
else
    echo "Downloading Python from $download_url"
    curl -L --fail --show-error -o cpython-${python_version}+${release_date}.tar.gz  "$download_url"
fi
if [ -d "build/bin" ]; then
    rm -fr build/bin
fi
mkdir -p build/bin
if [ -d "python" ]; then
    rm -fr python
fi
tar -xf cpython-${python_version}+${release_date}.tar.gz
mv python build/bin/python

# Download requirements if URL or copy to current folder is not empty
if [[ -n "$requirements_file_url" ]]; then
    if [[ "$requirements_file_url" =~ ^https?:// ]]; then
        echo "Downloading requirements file from $requirements_file_url"
        curl -L --fail --show-error -o requirements.txt "$requirements_file_url"
    else
        if [[ ! -f "$requirements_file_url" ]]; then
            echo "Requirements file not found: $requirements_file_url" >&2
            exit 1
        fi
        cp "$requirements_file_url" requirements.txt
    fi
fi

echo "################################################"
echo "### Working Directory:"
ls 
echo "### plugins Directory:"
ls plugins
echo "---plugins/CMakeLists.txt---"
cat plugins/CMakeLists.txt
echo "### build/bin Directory:"
ls build/bin
echo "################################################"
