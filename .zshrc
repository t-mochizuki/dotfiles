# source $HOME/.nvm/nvm.sh
# nvm use 0.12

# prompt
setopt PROMPT_PERCENT
setopt PROMPT_SUBST
PROMPT='%1~%1v %# '

# history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=1000
setopt hist_no_store
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt append_history
setopt share_history

setopt NO_BEEP
setopt NO_CD_ABLE_VARS

autoload -U vcs_info add-zsh-hook

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '[%b]%u%c'
zstyle ':vcs_info:*' actionformats '[%b|%a]%u%c'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '*'

function prompt-vcs-precmd() {
  vcs_info
    psvar=( $vcs_info_msg_0_ )
}

add-zsh-hook precmd prompt-vcs-precmd

bindkey -e

autoload -U compinit
compinit
autoload -U colors
colors

setopt auto_cd

setopt auto_pushd

setopt correct

setopt cdable_vars

setopt pushd_ignore_dups

zstyle ':completion:*:default' menu select=1

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
