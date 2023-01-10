#!/usr/bin/bash

if [[ ! -f ~/.gitconfig ]]; then
	echo 'put .gitconfig in my home directory'
	ln gitconfig ~/.gitconfig
fi
