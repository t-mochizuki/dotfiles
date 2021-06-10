#!/bin/zsh

if [[ $SHELL != '/bin/zsh' ]]; then
	echo 'change shell to zsh'
	chsh -s /bin/zsh
fi

if [[ ! -d ~/.nvm ]]; then
	echo 'install nvm'
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
fi

if [[ ! -d ~/.jenv ]]; then
	echo 'install jenv'
	git clone https://github.com/jenv/jenv.git ~/.jenv
	# download jdk from https://adoptopenjdk.net/
fi

if [[ ! -d ~/tmp ]]; then
	mkdir -p ~/tmp
fi

if [[ ! -f ~/tmp/sbt-1.5.3/sbt-1.5.3.tgz ]]; then
	echo 'download sbt'
	curl -fLo ~/tmp/sbt-1.5.3/sbt-1.5.3.tgz --create-dirs \
https://github.com/sbt/sbt/releases/download/v1.5.3/sbt-1.5.3.tgz
fi

if [[ ! -d ~/tmp/sbt-1.5.3/sbt ]]; then
	echo 'extract sbt zip file'
	cd ~/tmp/sbt-1.5.3
	tar -xf ~/tmp/sbt-1.5.3/sbt-1.5.3.tgz
	cd -
fi

if [[ ! -d ~/sbt-1.5.3 ]]; then
	echo 'put sbt in my home directory'
	cp -r ~/tmp/sbt-1.5.3/sbt/ ~/sbt-1.5.3/
fi

if [[ ! -d ~/.tfenv ]]; then
	echo 'install tfenv'
	git clone https://github.com/tfutils/tfenv.git ~/.tfenv
fi

if [[ ! -f ~/.gitconfig ]]; then
	echo 'put .gitconfig in my home directory'
	cp gitconfig ~/.gitconfig
fi

if [[ ! -d ~/.config/git/ ]]; then
	mkdir -p ~/.config/git/
fi

if [[ ! -f ~/.config/git/ignore ]]; then
	echo 'put .config/git/ignore in my home directory'
	cp config/git/ignore ~/.config/git/ignore
fi

if [[ ! -f ~/.zshenv ]]; then
	echo 'put .zshenv in my home directory'
	cp zshenv ~/.zshenv
fi

if [[ ! -f ~/.zshrc ]]; then
	echo 'put .zshrc in my home directory'
	cp zshrc ~/.zshrc
fi

if [[ ! -d ~/.vim/autoload/ ]]; then
	mkdir -p ~/.vim/autoload/
fi

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
	echo 'install plug.vim'
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -f ~/.vimrc ]]; then
	echo 'put .vimrc in my home directory'
	cp vimrc ~/.vimrc
fi

if [[ ! -d ~/.vim/userautoload/ ]]; then
	cp -r vim/userautoload/ ~/.vim/userautoload/
fi
