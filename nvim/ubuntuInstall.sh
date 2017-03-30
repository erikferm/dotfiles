#!/bin/bash

## Install neovim
NVIM=$(which nvim)
if [ -z "$NVIM" ]; then
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	sudo apt-get install -y neovim
fi
