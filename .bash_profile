export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export SHELL=/usr/local/bin/bash

# PS1='\W \$ '

alias ls="ls -al"
alias info="info --vi-keys"

if [ -x "`which rbenv`" ]; then
  alias mgem="rbenv exec mgem"
  alias gem="rbenv exec gem"
  alias ri="rbenv exec ri"
  alias irb="rbenv exec irb"
  alias rails="rbenv exec rails"
  alias bundle="rbenv exec bundle"
  alias rake="bundle exec rake"
  alias rspec="bundle exec rspec"
  alias guard="bundle exec guard"
fi

alias gtags="gtags --gtagslabel=pygments-parser"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -x "`which mvim`" ]; then
  alias vim="mvim -v"
  alias vi="mvim -v"
fi

if [ -x "`which go`" ]; then
  export GOROOT=`go env GOROOT`
  export GOPATH=$HOME/private/golang
  PATH=$GOROOT/bin:$GOPATH/bin:$PATH
fi
