export EDITOR=vim

if [[ -d ~/.pyenv ]]; then
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi

if [[ -d ~/.nvm ]]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
	# [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
fi

if [[ -d ~/.jenv ]]; then
	export JENV_ROOT="$HOME/.jenv"
	export PATH="$JENV_ROOT/bin:$PATH"
	eval "$(jenv init -)"
fi

if [[ -d ~/.tfenv ]]; then
	export TFENV_ROOT="$HOME/.tfenv"
	export PATH="$TFENV_ROOT/bin:$PATH"
fi

export JAVA_OPTS="-Xmx2G -Xss1M"

alias vi="$HOME/vim-8.2.1512/bin/vim"

alias sbt="$HOME/sbt-1.5.3/bin/sbt"

export LESS='-g -M -R -W -z-4 -x4'
