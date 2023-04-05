#!/bin/bash

#checks if os is correct
OS=$(uname)
if [[ "$OS" != *"Linux"* ]]; then
	echo "OS does not equal Linux!" >> linuxsetup.log
	exit
fi
#makes ~/.TRASH
mkdir -p ~/.TRASH
#changes .vimrc to .bup_vimrc
if [[ -f "~/.vimrc" ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "Current .vimrc was changed to .bup_vimrc" >> linuxsetup.log
fi
#puts etc/vimrc in ~/.vimrc
cat ./etc/vimrc > ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
