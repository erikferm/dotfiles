#!/bin/bash

## Install neovim
NVIM=$(which nvim)
if [ -z "$NVIM" ]; then
	sudo add-apt-repository ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get install neovim
fi
