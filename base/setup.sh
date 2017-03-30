#!/bin/bash

## Create envvars file if it doesn't already exist
ENVVARS=$(ls $HOME/.envvars)
if [ -z "$ENVVARS" ]; then	
	echo "Creating .envvars"
	touch $HOME/.envvars
fi

## Create aliases file if it doesn't already exist
ALIASES=$(ls $HOME/.aliases)
if [ -z "$ALIASES" ]; then	
	echo "Creating .aliases"
	touch $HOME/.aliases
fi

# Source the envvars file if they're not already
ENV_SOURCED=$(cat $HOME/.bash_profile | grep 'source $HOME/.envvars')
if [ -z "$ENV_SOURCED" ]; then
	echo 'source $HOME/.envvars' >> $HOME/.bash_profile
fi

# Source the aliases file if they're not already
ALIASES_SOURCED=$(cat $HOME/.bash_profile | grep 'source $HOME/.aliases')
if [ -z "$ALIASES_SOURCED" ]; then
	echo 'source $HOME/.aliases' >> $HOME/.bash_profile
fi

MACOS=$(uname -a | grep Darwin)
if [ ! -z "$MACOS" ]; then
	bash $PWD/base/homebrew.sh
fi
