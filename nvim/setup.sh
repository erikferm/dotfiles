#!/bin/sh

MACOS=$(uname -a | grep Darwin)
if [[ ! -z "$MACOS" ]]; then
	bash $(pwd)/nvim/OSXsetup.sh
else
	echo "Only OSX setup is currently implemented"
fi




