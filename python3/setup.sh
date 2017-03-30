#!/bin/bash

## Install python3
PYTHON3=$(which python3)
if [ -z "$PYTHON3" ]; then
	brew install --upgrade python3
else
	echo "Python3 is already installed. Run 'brew update python3' to update"
fi

