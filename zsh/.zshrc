export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  sudo
  fzf
  systemd
  zoxide
)

source "$ZSH/oh-my-zsh.sh"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/broot/launcher/zsh/br" ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}/broot/launcher/zsh/br"
eval "$(zoxide init zsh)"
alias bsh='bat --style=header --language=sh --paging=never'
alias ba='bat --style=header --paging=never'

export EDITOR=vim
export VISUAL=vim
export SYSTEMD_EDITOR=vim
export EMSDK_DIR="${EMSDK_DIR:-/opt/emsdk}"
if [ -f "$EMSDK_DIR/emsdk_env.sh" ]; then
  export EMSDK_QUIET=1
  source "$EMSDK_DIR/emsdk_env.sh" >/dev/null
fi

