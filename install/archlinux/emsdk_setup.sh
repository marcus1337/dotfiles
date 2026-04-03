#!/usr/bin/env bash
set -euo pipefail

emsdk_dir="${EMSDK_DIR:-/opt/emsdk}"

if [ ! -d "$emsdk_dir/.git" ]; then
  sudo git clone https://github.com/emscripten-core/emsdk.git "$emsdk_dir"
fi

cd "$emsdk_dir"
sudo ./emsdk install latest
sudo ./emsdk activate latest
