#!/bin/bash


DOTFILES="$HOME/dev/dotfiles"

if [[ -d $DOTFILES ]]; then
    print 'Checking dotfiles directory'
else
    print 'Cloning dotfiles'
    git clone https://github.com/nunofreitasbotelho/dotfiles.git $DOTFILES
fi

cd $DOTFILES

source install/environment.sh

source install/softwares.sh