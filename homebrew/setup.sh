#!/bin/bash

## Add Homebrew to PATH if not already set
BREW_PATH="/usr/local/bin"
BREW_PATH_SET=$(echo $PATH | grep $BREW_PATH)
if [[ -z "$BREW_PATH_SET" ]]; then
	PATH=$PATH:$BREW_PATH
fi
## Install Homebrew
BREW=$(which brew)
if [[ -z "$BREW" ]]; then
	echo "Installing Homebrew.."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew is already installed. Run 'brew update' to update."
fi

