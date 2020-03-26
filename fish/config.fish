## Fish configuration
#prompt colors
set -U fish_greeting 
set -U fish_color_autosuggestion "808080"
set -U fish_color_command --bold "00afaf"
set -U fish_color_comment --bold "808080"
set -U fish_color_cwd "5f8787"
set -U fish_color_dir "afd700"
set -U fish_color_symlink "ff5faf"
set -U fish_color_end "ffaf00"
set -U fish_color_operator "ffaf00"
set -U fish_color_param "d7875f"
set -U fish_color_quote "d7af5f"
set -U fish_color_redirection "ffaf00"
set -U fish_color_user "5f8787"

## Git config
# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_git_prompt.fish
set -x __fish_git_prompt_char_stateseparator ""
set -x __fish_git_prompt_char_untrackedfiles "✗"
set -x __fish_git_prompt_color_branch --bold "d7af00"
set -x __fish_git_prompt_color_flags --bold red
set -x __fish_git_prompt_color_prefix --bold "5f8787"
set -x __fish_git_prompt_color_suffix --bold "5f8787"
set -x __fish_git_prompt_show_informative_status true

## CDPath
set -x CDPATH . ~/code/src/github.com/
set -ax PATH /Users/erikferm/google-cloud-sdk/bin /Users/erikferm/code/bin

## Go stuff
set -x GOROOT /usr/local/opt/go/libexec/
set -x GOPATH ~/code
set -x GOBIN ~/code/bin

## LC vars
set -x LC_ALL en_US.UTF-8

## LSCOLORS
set -x LSCOLORS Cxfxbxbxbxegedbgbchcch

## aliases
alias vim="nvim"
alias tmux="tmux -u"
