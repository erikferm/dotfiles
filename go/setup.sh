#!/bin/bash

bash $(pwd)/homebrew/setup.sh
GO=$(which go)
if [ -z "$GO" ]; then
	brew install go
else
	echo "Go already installed. Run 'brew update go' to update"
fi
