#!/bin/sh

MACOS=$(uname -a | grep Darwin)
if [[ ! -z "$MACOS" ]]; then
	echo "Running setup for OSX system"
	$(pwd)/zsh/OSXsetup.sh
else
	echo "Only OSX setup is currently implemented"
fi




