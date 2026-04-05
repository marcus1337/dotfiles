#!/usr/bin/env bash
set -euo pipefail

"$dir/emsdk_setup.sh"

tools=(
  npm
  gcc
  cmake
  python
  python-pipx
  docker
)

sudo pacman -Syu --noconfirm --needed "${tools[@]}" 
sudo pacman -Syu --noconfirm --needed firefox libglvnd mesa mesa-util
sudo pacman -Syu --noconfirm --needed sdl2-compat sdl2_image sdl2_mixer sdl2_ttf sdl2_gfx 
sudo pacman -Syu --noconfirm --needed ccache lld mimalloc

eglinfo | grep -i "OpenGL ES"
es2info

