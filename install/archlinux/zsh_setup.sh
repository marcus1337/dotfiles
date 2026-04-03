#!/usr/bin/env bash
set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
root="$(git -C "$script_dir" rev-parse --show-toplevel)"

zshrc_src="$root/zsh/.zshrc"
zshrc_dst="$HOME/.zshrc"

broot_dir="${XDG_CONFIG_HOME:-$HOME/.config}/broot/launcher/zsh"
broot_launcher="$broot_dir/br"

[ -f "$zshrc_src" ] || { echo "missing $zshrc_src" >&2; exit 1; }

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

mkdir -p "$broot_dir"
broot --print-shell-function zsh > "$broot_launcher"
chmod 644 "$broot_launcher"
broot --set-install-state installed

ln -sfn "$zshrc_src" "$zshrc_dst"

if command -v zsh >/dev/null 2>&1; then
  zsh_path="$(command -v zsh)"
  current_shell="$(getent passwd "$USER" | cut -d: -f7)"
  if [ "$current_shell" != "$zsh_path" ]; then
    chsh -s "$zsh_path"
  fi
fi


