# basic
setopt auto_pushd
setopt auto_cd
setopt correct
setopt cdable_vars
bindkey -e

# history
export HISTFILE=~/.zhistory
export HISTSIZE=100000
export SAVEHIST=100000
setopt extended_history
setopt share_history
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_ignore_space
setopt hist_ignore_dups
setopt no_flow_control
setopt inc_append_history
setopt hist_verify
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# prompt
setopt PROMPT_PERCENT
setopt PROMPT_SUBST
PROMPT='%1~%1v %# '

# etc
setopt nomatch
setopt no_clobber
setopt ignore_eof
WORDCHARS='*?._-[]~=&;!#$%^(){}<>'
