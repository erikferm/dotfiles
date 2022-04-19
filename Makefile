PWD=$(shell pwd)

.PHONY: alacritty
alacritty: ## Will install Alacritty
	sh alacritty/setup.sh

.PHONY: fish
fish: ## Will install Alacritty
	sh fish/setup.sh

setup: ## will add envvars and aliases file if doesn't exist
	sh base/setup.sh

python: setup ## Will install python3
	sh python3/setup.sh

golang: setup ## Will install go
	sh go/setup.sh

neovim: ## Will install neovim
	sh nvim/setup.sh

zshell: setup ## Will setup zsh
	sh zsh/setup.sh

help: ## Display this help message
	@cat $(MAKEFILE_LIST) | grep -e "^[a-zA-Z_\-]*: *.*## *" | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

