#!/bin/bash

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
if [ ! -d ~/.vim/ ]
then
	ln -s ~/dotfiles/vim/ ~/.vim
fi
