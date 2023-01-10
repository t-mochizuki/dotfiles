#!/usr/bin/bash

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
	ln vimrc ~/.vimrc
fi

if [[ ! -d ~/.vim/userautoload/ ]]; then
	cp -r vim/userautoload/ ~/.vim/userautoload/
fi
