## Fish configuration
#prompt colors
set fish_color_git_branch "d7af00"
set fish_color_user "5f8787"

# Git config
# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_git_prompt.fish
set -xg __fish_git_prompt_show_informative_status true
set -xg __fish_git_prompt_char_dirtystate "✗"
set -xg __fish_git_prompt_char_untrackedfiles "✗"
set -xg __fish_git_prompt_char_stateseparator ""
set -xg __fish_git_prompt_color_flags --bold red
set -xg __fish_git_prompt_color_branch --bold "d7af00"
set -xg __fish_git_prompt_color_prefix --bold "5f8787"
set -xg __fish_git_prompt_color_suffix --bold "5f8787"
