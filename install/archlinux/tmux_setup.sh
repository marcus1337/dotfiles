#!/bin/sh
set -eu

cfg="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
data="${XDG_DATA_HOME:-$HOME/.local/share}/tmux"
plugins="$data/plugins"
tpm="$plugins/tpm"
conf="$cfg/tmux.conf"

mkdir -p "$plugins"
[ -d "$tpm" ] || git clone https://github.com/tmux-plugins/tpm "$tpm"

[ -f "$conf" ] || {
  echo "Missing tmux config: $conf" >&2
  exit 1
}

session="setup-tmux"
tmux has-session -t "$session" 2>/dev/null || tmux new-session -d -s "$session"
tmux source-file "$conf"
[ -x "$tpm/bin/install_plugins" ] && "$tpm/bin/install_plugins"
tmux kill-session -t "$session" 2>/dev/null || true

rm -f "$HOME/.tmux.conf" "$HOME/.tmux.conf.local"
rm -rf "$HOME/.tmux"
