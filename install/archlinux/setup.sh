#!/usr/bin/env bash
set -euo pipefail

dir="$(cd "$(dirname "$0")" && pwd)"

"$dir/packages.sh"
"$dir/zsh_setup.sh"
"$dir/link_dotfiles.sh"
"$dir/tmux_setup.sh"
"$dir/vim_setup.sh"
