## Fish configuration
#prompt colors
set fish_color_git_branch "d7af00"
set fish_color_user "5f8787"

## Git config
# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_git_prompt.fish
set -x __fish_git_prompt_show_informative_status true
set -x __fish_git_prompt_char_dirtystate "✚"
set -x __fish_git_prompt_char_untrackedfiles "✗"
set -x __fish_git_prompt_char_stateseparator ""
set -x __fish_git_prompt_color_flags --bold red
set -x __fish_git_prompt_color_branch --bold "d7af00"
set -x __fish_git_prompt_color_prefix --bold "5f8787"
set -x __fish_git_prompt_color_suffix --bold "5f8787"

## CDPath
set -x CDPATH . ~/code/src/github.com/

## Go stuff
set -x GOROOT /usr/local/opt/go/libexec/
set -x GOPATH ~/code
set -x GOBIN ~/code/bin

