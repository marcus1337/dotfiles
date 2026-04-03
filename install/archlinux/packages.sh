#!/usr/bin/env bash
set -euo pipefail

required=(
  git
  tmux
  gvim
  neovim
  wl-clipboard
)

cli_tools=(
  yazi
  zoxide
  fzf
  ripgrep
  fd
  bat
  lsd
  tldr
  broot
  stow
)

optional=(
  docker
)

sudo pacman -Syu --noconfirm --needed "${required[@]}" "${cli_tools[@]}" "${optional[@]}"
