#!/usr/bin/env bash
set -euo pipefail

tools=(
  npm
  gcc
  cmake
  python
  python-pipx
  docker
)

sudo pacman -Syu --noconfirm --needed "${tools[@]}" 

