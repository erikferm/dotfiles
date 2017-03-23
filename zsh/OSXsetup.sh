#!/bin/bash

## This file is not to be run directly.
## It's used by make in the repositorys top directory.
## If not called via make the setup paths will get messed up

# First install and/or update homebrew
bash $(pwd)/homebrew/setup.sh
if [ -z "$(which zsh | grep /usr/local/bin)" ]; then
	echo "Installing zsh with homebrew"
	brew install zsh
else
	echo "zsh already installed with brew. Run 'brew update zsh' if you want to update"
fi

## Install oh-my-zsh
OMZ=$(ls $HOME/.oh-my-zsh/oh-my-zsh.sh)
if [ -z "$OMZ" ]; then
	echo "Installing oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
	echo "Oh-my-zsh already installed"
fi


## Use this .zshrc file
ZSHRC=$(ls "$HOME"/.zshrc)
HERE=$(pwd)/zsh
LINKED_ZSHRC=$(ls -l $ZSHRC | awk -F "-> " '{print $2}' )

if [ "$LINKED_ZSHRC" = "$HERE/zshrc" ]; then
	echo "Already using our zshrc file"
else
	if [ -z "$ZSHRC" ]; then	
		## Link zshrc to homefolder if not already exists
		echo "Creating symlink for .zshrc"
		ln -s $HERE/zshrc $HOME/.zshrc
	else
		## Create backup of old file and change to this one
		BACKUP="$HOME/.zshrc_BACKUP_$(date +%Y-%m-%dT%H:%M:%S)"
		mv $ZSHRC $BACKUP
		echo "Current .zshrc file backed up as $BACKUP"
		ln -s "$HERE/zshrc" "$HOME/.zshrc"
	fi
fi

if [ "$SHELL" != "/bin/zsh" ]; then
	echo "Setting default shell to zsh (need to restart terminal for change to take effect)"
	chsh -s $(which zsh)
fi

