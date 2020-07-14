#!/bin/bash

BASEDIR=$(cd $(dirname $0); pwd -P)

[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $BASEDIR/etc/vimrc ~/.vimrc
vim +PluginInstall +qall

ln -s $BASEDIR/etc/gitconfig ~/.gitconfig

ln -s $BASEDIR/etc/editorconfig ~/.editorconfig
