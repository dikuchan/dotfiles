# P10K

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Variables

export ZSH="/home/dikuchan/.oh-my-zsh"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/lib:$PATH
export PATH=$HOME/.config/polybar/network:$PATH
export PATH=$HOME/.scripts:$PATH

export PROJECTS_DIR=$HOME/Projects
export OPAMSWITCH=lama
export CMAKE_EXPORT_COMPILE_COMMANDS=1

# Aliases

source $HOME/.aliases
source $HOME/.colors

# OhMyZsh

ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Opam

test -r /home/dikuchan/.opam/opam-init/init.zsh && . /home/dikuchan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Other

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vi'
else
    export EDITOR='mvim'
fi
