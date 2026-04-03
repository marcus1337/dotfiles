export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)
source $ZSH/oh-my-zsh.sh
source /home/zzz/.config/broot/launcher/bash/br
export EDITOR=vim
export VISUAL=vim
export SYSTEMD_EDITOR=vim
eval "$(zoxide init zsh)"

