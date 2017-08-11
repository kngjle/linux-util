#!/bin/bash

BASEDIR=$(cd $(dirname $0); pwd -P)

curl -o $BASEDIR/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o $BASEDIR/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

touch $HOME/.bash_profile
echo "# Added by linux-util" >> ~/.bash_profile
echo "LINUX_UTIL_HOME=$BASEDIR" >> ~/.bash_profile
echo "[ -r \"$BASEDIR/etc/bash_profile\" ] && . \"$BASEDIR/etc/bash_profile\"" >> ~/.bash_profile

[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $BASEDIR/etc/vimrc ~/.vimrc

ln -s $BASEDIR/etc/gitconfig ~/.gitconfig

ln -s $BASEDIR/etc/editorconfig ~/.editorconfig
