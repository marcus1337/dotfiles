#!/usr/bin/env bash
set -euo pipefail

dir="$(cd "$(dirname "$0")" && pwd)"

"$dir/packages.sh"
"$dir/tmux_setup.sh"
"$dir/emsdk_setup.sh"
"$dir/zsh_setup.sh"
