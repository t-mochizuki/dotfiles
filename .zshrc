source $HOME/.nvm/nvm.sh
nvm use 0.12

# prompt
setopt PROMPT_PERCENT
setopt PROMPT_SUBST
PROMPT='%h %% '
RPROMPT='%1v %1~ %D %*'

# history
HISTFILE=$HOME/.history
SAVEHIST=1000
HISTSIZE=1000

setopt NO_BEEP
setopt AUTO_CD
setopt NO_CD_ABLE_VARS

autoload -U vcs_info add-zsh-hook

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '%s[%b]%u%c'
zstyle ':vcs_info:*' actionformats '%s[%b|%a]%u%c'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '*'

function prompt-vcs-precmd() {
  vcs_info
    psvar=( $vcs_info_msg_0_ )
}

add-zsh-hook precmd prompt-vcs-precmd

bindkey -e

autoload -U compinit; compinit

setopt auto_cd

setopt auto_pushd

setopt pushd_ignore_dups

setopt hist_ignore_all_dups

setopt hist_ignore_space

zstyle ':completion:*:default' menu select=1

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
