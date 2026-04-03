#!/usr/bin/env bash
set -euo pipefail

required=(
  git
  tmux
  gvim
  neovim
  zsh
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
  lazygit
)

optional=(
  docker
  curl
  wget
  npm
  python
  cmake
  gcc
)

sudo pacman -Syu --noconfirm --needed "${required[@]}" "${cli_tools[@]}" "${optional[@]}"
