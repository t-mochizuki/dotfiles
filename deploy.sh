#!/bin/zsh

if [[ ! -f ~/.gitconfig ]]; then
	cp gitconfig ~/.gitconfig
fi

if [[ ! -d ~/.config/git/ ]]; then
	mkdir -p ~/.config/git/
fi

if [[ ! -f ~/.config/git/ignore ]]; then
	cp config/git/ignore ~/.config/git/ignore
fi

if [[ ! -f ~/.zshenv ]]; then
	cp zshenv ~/.zshenv
fi

if [[ ! -f ~/.zshrc ]]; then
	cp zshrc ~/.zshrc
fi

if [[ ! -f ~/.vimrc ]]; then
	cp vimrc ~/.vimrc
fi

if [[ ! -d ~/.vim/userautoload/ ]]; then
	cp -r vim/userautoload/ ~/.vim/userautoload/
fi

if [[ ! -f ~/.tmux.conf ]]; then
	cp tmux.conf ~/.tmux.conf
fi
