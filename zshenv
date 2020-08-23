export EDITOR=vim

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

export JENV_ROOT="$HOME/.jenv"
export PATH="$JENV_ROOT/bin:$PATH"
eval "$(jenv init -)"

export JAVA_OPTS="-Xmx2G -Xss1M"

alias vi="$HOME/vim-8.2.1512/bin/vim"

alias sbt="$HOME/sbt-1.3.13/bin/sbt"

export LESS='-g -M -R -W -z-4 -x4'
