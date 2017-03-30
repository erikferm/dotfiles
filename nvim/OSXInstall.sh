#!/bin/bash

## Install neovim
NVIM=$(which nvim)
if [ -z "$NVIM" ]; then
	brew install neovim/neovim/neovim
fi

