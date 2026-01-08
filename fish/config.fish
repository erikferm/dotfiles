## Fish configuration
source ~/.config/fish/themes/kanagawa.fish

# OSX specific setup (mostly brew stuff)
if test (uname) = "Darwin"
  set arch (arch)
  if [ "$arch" = "arm64" ]
    echo "AAAARM"
    eval (/opt/homebrew/bin/brew shellenv)
  else if [ "$arch" = "i386" ]
    echo "INTEEEEL"
    eval (/usr/local/bin/brew shellenv)
  end
  # Add brew installations to path
  set -ax PATH (brew --prefix)/bin
  ## Java stuff
  #
  set -x JAVA_HOME (brew --prefix)'/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home/'

  ## CPATH
  set -x LIBRARY_PATH (brew --prefix)/lib
  set -x C_INCLUDE_PATH (brew --prefix)/include
  set -ax CFLAGS "-I$C_INCLUDE_PATH -L$LIBRARY_PATH"
end

## CDPath
set -x CDPATH . ~/code/src/github.com/

## Editor
set -x EDITOR nvim

## Go stuff
set -x GOPATH ~/code
set -ax PATH $GOPATH/bin


## DBT stuff
set -x DBT_USER erik

## PYENV stuff
set -Ux PYENV_ROOT $HOME/.pyenv
#set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
set -ax PATH $PYENV_ROOT/bin
if type -q pyenv
  pyenv init - | source
end

## Rust stuff
set -x RUSTUP_HOME $HOME/.rustup
set -x CARGO_HOME $HOME/.cargo
set -ax PATH $CARGO_HOME/bin

## LC vars
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

## If gcloud is installed
if type -q gcloud
  ## GOOGLE CLOUD CREDENTIALS
  set -x GOOGLE_APPLICATION_CREDENTIALS /Users/erikferm/.config/gcloud/application_default_credentials.json
  ## Add gcloud components to path
  set -ax PATH /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
  ## Use auth_plugin for kubernetes
  set -x USE_GKE_GCLOUD_AUTH_PLUGIN True
end

## aliases
alias vim="nvim"
alias tmux="tmux -u -f ~/.config/tmux/tmux.conf"

# Created by `pipx` on 2025-10-22 11:26:28
set PATH $PATH /Users/erik.ferm/.local/bin

set PATH $PATH /Users/erikferm/code/github.com/dbt-capital/env/bin
