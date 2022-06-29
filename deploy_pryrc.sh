#!/bin/zsh

if [[ ! -f ~/.pryrc ]]; then
	echo 'put .pryrc in my home directory'
	ln pryrc ~/.pryrc
fi
