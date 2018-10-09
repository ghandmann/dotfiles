#!/bin/bash

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/screenrc ~/.screenrc
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/ackrc ~/.ackrc

if [ ! -d ~/.vim/ ]
then
	ln -s ~/dotfiles/vim/ ~/.vim
fi
