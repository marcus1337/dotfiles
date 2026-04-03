#!/bin/sh
set -eu

root="$(cd "$(dirname "$0")/../.." && pwd)"
cfg="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
data="${XDG_DATA_HOME:-$HOME/.local/share}/tmux"
plugins="$data/plugins"
tpm="$plugins/tpm"
conf="$cfg/tmux.conf"

mkdir -p "$(dirname "$cfg")" "$plugins"
ln -sfn "$root/tmux" "$cfg"
[ -d "$tpm" ] || git clone https://github.com/tmux-plugins/tpm "$tpm"
tmux source-file "$conf" 2>/dev/null || true
[ -x "$tpm/bin/install_plugins" ] && "$tpm/bin/install_plugins"

rm -f "$HOME/.tmux.conf"
rm -f "$HOME/.tmux.conf.local"
rm -rf "$HOME/.tmux"

