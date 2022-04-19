#!/bin/bash

## Setup neovim
VIMRC=$HOME/.config/nvim/init.lua
LUA_CONFIG_TARGET=$HOME/.config/nvim/lua
HERE=$PWD/nvim
LUA_INIT=$HERE/init.lua
LUA_FILES=$HERE/lua
if [ -f "$VIMRC" ]; then
	LINKED_VIMRC=$(ls -l $VIMRC | awk -F "-> " '{print $2}')
	if [ "$LINKED_VIMRC" = "$LUA_INIT" ]; then
		echo "Already using our lua init file"
	else
		## Create backup of old file and change to this one
		BACKUP="$HOME/.config/nvim/init_BACKUP_$(date +%Y-%m-%dT%H:%M:%S)"
		BACKUP_FILES="$HOME/.config/nvim/lua_BACKUP_$(date +%Y-%m-%dT%H:%M:%S)"
		mv $VIMRC $BACKUP
		mv $LUA_CONFIG_TARGET $BACKUP_FILES
		echo "Current lua init file backed up as $BACKUP and $BACKUP_FILES"
		ln -s "$LUA_INIT" "$VIMRC"
		ln -s "$LUA_FILES" "$LUA_CONFIG_TARGET"
	fi
else
	echo "Creating symlink for vimrc"
	mkdir -p $HOME/.config/nvim
	ln -s "$LUA_INIT" "$VIMRC"
	ln -s "$LUA_FILES" "$LUA_CONFIG_TARGET"
fi
