## Fish configuration
source ~/.config/fish/themes/kanagawa.fish

set arch (arch)
if [ "$arch" = "arm64" ]
  echo "AAAARM"
  eval (/opt/homebrew/bin/brew shellenv)
else if [ "$arch" = "i386" ]
  echo "INTEEEEL"
  eval (/usr/local/bin/brew shellenv)
end 


## CDPath
set -x CDPATH . ~/code/src/github.com/

## Editor
set -x EDITOR nvim

## Go stuff
set -x GOPATH ~/code

## Java stuff
set -x JAVA_HOME (brew --prefix)'/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home/'

## Add GOBIN to PATH
set -ax PATH $GOPATH/bin

## DBT stuff
set -x DBT_USER erik

## PYENV stuff
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

## LC vars
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

## CPATH
set -x LIBRARY_PATH (brew --prefix)/lib
set -x C_INCLUDE_PATH (brew --prefix)/include
set -ax CFLAGS "-I$C_INCLUDE_PATH -L$LIBRARY_PATH"

## GOOGLE CLOUD CREDENTIALS
set -ax PATH (brew --prefix)/bin
set -x GOOGLE_APPLICATION_CREDENTIALS /Users/erikferm/.config/gcloud/application_default_credentials.json


## aliases
alias vim="nvim"
alias tmux="tmux -u -f ~/.config/tmux/tmux.conf"
