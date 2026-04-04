#!/usr/bin/env bash
set -euo pipefail

plugin_dir="${HOME}/.vim/pack/vendor/start"
mkdir -p "$plugin_dir"
mkdir -p "$HOME/vimwiki"

install_or_update() {
  local repo_url="$1"
  local dir_name="$2"
  local target="${plugin_dir}/${dir_name}"

  if [ -d "${target}/.git" ]; then
    git -C "$target" pull --ff-only
  else
    git clone --depth 1 "$repo_url" "$target"
  fi
}

install_or_update "https://github.com/vimwiki/vimwiki.git" "vimwiki"

# generate help tags so :help vimwiki works
if command -v vim >/dev/null 2>&1; then
  vim -u NONE -c "helptags ${plugin_dir}/vimwiki/doc" -c q
fi

