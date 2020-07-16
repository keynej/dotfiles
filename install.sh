#!/bin/bash

BASEDIR=$(cd $(dirname $0); pwd -P)
DOTFILES_DIR="$BASEDIR/etc"

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# application
brew bundle

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim
[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $DOTFILES_DIR/vimrc ~/.vimrc
vim +PluginInstall +qall

# git
ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig

# editorconfig
ln -s $DOTFILES_DIR/editorconfig ~/.editorconfig
