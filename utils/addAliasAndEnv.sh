#!/bin/bash
HERE=$1
## Add nvim aliases
ALIASES=$(cat $HERE/aliases)
for line in $ALIASES
do
	ALIASES_SET=$(cat $HOME/.aliases | grep "$line")
	if [ -z "$ALIASES_SET" ]; then
		echo "$ALIASES" >> $HOME/.aliases
	fi
	ALIASES_SET=""
done

## Add nvim envvars
ENVVARS=$(cat $HERE/envvars)
for line in $ENVVARS
do
	ENVVARS_SET=$(cat $HOME/.envvars | grep "$line")
	if [ -z "$ENVVARS_SET" ]; then
		echo "$ENVVARS" >> $HOME/.envvars
	fi
	ENVVARS_SET=""
done

source $HOME/.aliases
source $HOME/.envvars
