#!/bin/bash

rm -f ~/.vimrc
sed -i 's/source\ \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc
rm -rf ~/.TRASH
