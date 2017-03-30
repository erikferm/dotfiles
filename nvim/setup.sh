#!/bin/bash

MACOS=$(uname -a | grep Darwin)
if [ ! -z "$MACOS" ]; then
	bash $PWD/nvim/OSXInstall.sh
fi

UBUNTU=$(uname -a | grep Ubuntu)
if [ ! -z "$UBUNTU" ]; then
	bash $PWD/nvim/ubuntuInstall.sh
fi

## Install neovim-python
NVIMPYTHON=$(pip3 show neovim | grep Version)
if [ -z "$NVIMPYTHON" ]; then
	pip3 install --upgrade neovim
fi

## Setup neovim
VIMRC=$HOME/.config/nvim/init.vim
HERE=$PWD/nvim
if [ -f "$VIMRC" ]; then
	LINKED_VIMRC=$(ls -l $VIMRC | awk -F "-> " '{print $2}')
	if [ "$LINKED_VIMRC" = "$HERE/vimrc" ]; then
		echo "Already using our vimrc file"
	else
		## Create backup of old file and change to this one
		BACKUP="$HOME/.config/nvim/init_BACKUP_$(date +%Y-%m-%dT%H:%M:%S)"
		mv $VIMRC $BACKUP
		echo "Current vimrc file backed up as $BACKUP"
		ln -s "$HERE/vimrc" "$HOME/.config/nvim/init.vim"
	fi
else
	echo "Creating symlink for vimrc"
	mkdir -p $HOME/.config/nvim
	ln -s "$HERE/vimrc" "$HOME/.config/nvim/init.vim"
fi

## Install Plug for nvim
PLUG=$HOME/.local/share/nvim/site/autoload/plug.vim
if [ ! -f "$PLUG" ]; then
	echo "Installing Plug.."
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "Plug already installed"
fi

bash $PWD/utils/addAliasAndEnv.sh $HERE
