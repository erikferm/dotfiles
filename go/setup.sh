#!/bin/bash

bash $(pwd)/homebrew/setup.sh
GO=$(which go)
if [ -z "$GO" ]; then
	brew install go
else
	echo "Go already installed. Run 'brew update go' to update"
fi
mkdir -p $HOME/code $HOME/code/bin
echo "Don't forget to set GOPATH and GOBIN environment variables and add them to your PATH"
