## Fish configuration
source ~/.config/fish/themes/kanagawa.fish

eval (/opt/homebrew/bin/brew shellenv)

## CDPath
set -x CDPATH . ~/code/src/github.com/

## Editor
set -x EDITOR nvim

## Go stuff
set -x GOPATH ~/code

## Add GOBIN to PATH
set -ax PATH $GOPATH/bin

## LC vars
set -x LC_ALL en_US.UTF-8

## GOOGLE CLOUD CREDENTIALS
set -ax PATH /Users/erikferm/google-cloud-sdk/bin
set -x GOOGLE_APPLICATION_CREDENTIALS /Users/erikferm/.config/gcloud/application_default_credentials.json

## LSCOLORS
#set -x LSCOLORS Cxfxbxbxbxegedbgbchcch

## aliases
alias vim="nvim"
alias tmux="tmux -u"

## Try to attach to running session
tmux attach

