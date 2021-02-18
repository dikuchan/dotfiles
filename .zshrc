if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/dikuchan/.oh-my-zsh"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/lib:$PATH

export OPAMSWITCH=lama

# ZSH configuration
ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="false"
export UPDATE_ZSH_DAYS=14

DISABLE_MAGIC_FUNCTIONS="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"

DISABLE_UNTRACKED_FILES_DIRTY="false"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# opam configuration
test -r /home/dikuchan/.opam/opam-init/init.zsh && . /home/dikuchan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
