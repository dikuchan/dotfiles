if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/dikuchan/.oh-my-zsh"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/lib:$PATH
export PATH=$PATH:$HOME/.config/polybar/network

export CMAKE_EXPORT_COMPILE_COMMANDS=1

# Aliases

source $HOME/.aliases

# ZSH configuration

export UPDATE_ZSH_DAYS=14

ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="false"
DISABLE_MAGIC_FUNCTIONS="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Opam configuration
test -r /home/dikuchan/.opam/opam-init/init.zsh && . /home/dikuchan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
