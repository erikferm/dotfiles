#!/bin/bash

## Install python3

PYTHON3=$(which python3)
PIP3=$(which pip3)

MACOS=$(uname -a | grep Darwin)
if [ ! -z "$MACOS" ]; then
	if [ -z "$PYTHON3" ]; then
		brew install --upgrade python3
	fi
fi

UBUNTU=$(uname -a | grep Linux)
if [ ! -z "$UBUNTU" ]; then
	if [ -z "$PYTHON3" ]; then
		sudo apt-get install -y python3-dev
	fi
	if [ -z "$PIP3" ]; then
		sudo apt-get install -y python3-pip
	fi
fi

