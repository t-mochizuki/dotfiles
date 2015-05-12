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
RPROMPT="[%1v]"
