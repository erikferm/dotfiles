#!/bin/bash

GO=$(which go)
if [ -z "$GO" ]; then
	brew install go
else
	echo "Go already installed. Run 'brew update go' to update"
fi
mkdir -p $HOME/code $HOME/code/bin

bash $PWD/utils/addAliasAndEnv.sh $PWD/go
