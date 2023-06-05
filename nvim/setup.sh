#!/bin/bash

## Setup neovim
VIMRC=$HOME/.config/nvim
## LUA_CONFIG_TARGET=$HOME/.config/nvim/lua
NVIM=$PWD/nvim

if [ ! -d "$VIMRC" ]; then
	echo "Creating symlink for vimrc"
	mkdir -p $HOME/.config
	ln -s "$NVIM" "$VIMRC"
	return
fi

LINKED_VIMRC=$(ls -l $VIMRC | awk -F "-> " '{print $2}')
if [ "$LINKED_VIMRC" = "$NVIM" ]; then
	echo "Already using our config"
else
	## Create backup of old file and change to this one
	BACKUP="$HOME/.config/nvim_BACKUP_$(date +%Y-%m-%dT%H:%M:%S)"
	mv $VIMRC $BACKUP
	echo "Current lua init file backed up as $BACKUP"
	ln -s "$NVIM" "$VIMRC"
fi
