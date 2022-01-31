## Fish configuration
source ~/.config/fish/themes/kanagawa.fish

## CDPath
set -x CDPATH . ~/code/src/github.com/

## Editor
set -x EDITOR nvim

## Go stuff
set -x GOROOT /usr/local/opt/go/libexec/
set -x GOPATH ~/code
set -x GOBIN ~/code/bin

## Add GOBIN to PATH
set -ax PATH $GOBIN
set -ax PATH /Users/erikferm/google-cloud-sdk/bin

## Add Pyenv 
set -x PATH "/home/erikferm/.pyenv/bin" $PATH
set -x CLOUDSDK_PYTHON (which python)
#status --is-interactive; and source (pyenv init -|psub)

## LC vars
set -x LC_ALL en_US.UTF-8

## GOOGLE CLOUD CREDENTIALS
set -x GOOGLE_APPLICATION_CREDENTIALS /Users/erikferm/.config/gcloud/application_default_credentials.json

## LSCOLORS
#set -x LSCOLORS Cxfxbxbxbxegedbgbchcch

## aliases
alias vim="nvim"
alias tmux="tmux -u"

