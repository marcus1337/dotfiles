#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../.." && pwd)"

config_home="${XDG_CONFIG_HOME:-$HOME/.config}"

mkdir -p "$config_home"
mkdir -p "$HOME/.vim"

ln -sfn "$root/nvim"   "$config_home/nvim"
ln -sfn "$root/tmux"   "$config_home/tmux"
ln -sfn "$root/sway"   "$config_home/sway"
ln -sfn "$root/fuzzel" "$config_home/fuzzel"

ln -sfn "$root/zsh/.zshrc" "$HOME/.zshrc"
ln -sfn "$root/vim/.vimrc" "$HOME/.vimrc"
