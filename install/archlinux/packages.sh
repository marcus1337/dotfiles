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
  glow
  watchexec
)

optional=(
  docker
  curl
  wget
  npm
  python
  cmake
  gcc
  ttf-jetbrains-mono-nerd
  noto-fonts
  noto-fonts-emoji
  noto-fonts-cjk
  python-pipx
)

sudo pacman -Syu --noconfirm --needed "${required[@]}" "${cli_tools[@]}" "${optional[@]}"
fc-cache -fv

