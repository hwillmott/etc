#!/bin/bash

if [ ! -e "$HOME/.vim" ]; then
    ln -s "$HOME/etc/vim" "$HOME/.vim"
fi

ln -s "$HOME/etc/vimrc" "$HOME/.vimrc" 
ln -s "$HOME/etc/bashrc" "$HOME/.bashrc"
ln -s "$HOME/etc/bash_profile" "$HOME/.bash_profile"
