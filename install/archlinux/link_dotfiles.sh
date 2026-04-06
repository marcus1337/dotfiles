#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/../.." && pwd)"
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
mkdir -p "$config_home"
mkdir -p "$HOME/.vim"

link_path() {
  local src="$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  if [ -L "$dst" ]; then
    rm -f "$dst"
  elif [ -e "$dst" ]; then
    mv "$dst" "${dst}.bak.$(date +%Y%m%d-%H%M%S)"
  fi

  ln -s "$src" "$dst"
}

link_path "$root/nvim"        "$config_home/nvim"
link_path "$root/tmux"        "$config_home/tmux"
link_path "$root/sway"        "$config_home/sway"
link_path "$root/fuzzel"      "$config_home/fuzzel"
link_path "$root/zsh/.zshrc"  "$HOME/.zshrc"
link_path "$root/vim/.vimrc"  "$HOME/.vimrc"

