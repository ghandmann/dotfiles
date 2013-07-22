#!/bin/bash

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/screenrc ~/.screenrc
if [ ! -d ~/.vim/ ]
then
	ln -s ~/dotfiles/vim/ ~/.vim
fi
