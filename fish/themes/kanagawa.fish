#!/usr/bin/fish
# Kanagawa Fish shell theme
# A template was taken and modified from Tokyonight:
# https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish
set -l foreground DCD7BA
set -l selection 2D4F67
set -l comment 727169
set -l red C34043
set -l orange FF9E64
set -l yellow C0A36E
set -l green 76946A
set -l purple 957FB8
set -l cyan 7AA89F
set -l pink D27E99

set -g fish_color_cwd $green
set -g fish_color_dir $purple
set -g fish_color_symlink $red
set -g fish_color_user $purple

# Syntax Highlighting Colors
set -g fish_color_autosuggestion $comment
set -g fish_color_command $cyan
set -g fish_color_comment $comment
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_escape $pink
set -g fish_color_keyword $pink
set -g fish_color_normal $foreground
set -g fish_color_operator $green
set -g fish_color_param $purple
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_search_match --background=$selection
set -g fish_color_selection --background=$selection

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

## Git config
# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_git_prompt.fish
set -x __fish_git_prompt_char_stateseparator ""
set -x __fish_git_prompt_char_untrackedfiles "✗"
set -x __fish_git_prompt_color_branch --bold $orange
set -x __fish_git_prompt_color_flags --bold $red
set -x __fish_git_prompt_color_prefix --bold $yellow
set -x __fish_git_prompt_color_suffix --bold $yellow
set -x __fish_git_prompt_show_informative_status true

#DCD7BA
#C8C093	
#16161D	
#1F1F28	
#2A2A37	
#363646	
#54546D	
#223249	
#2D4F67	
#2B3328
#49443C
#43242B
#252535
#76946A
#C34043
#DCA561
#E82424
#FF9E3B
#6A9589
#658594
#727169
#938AA9
#957FB8
#7E9CD8
#9CABCA
#7FB4CA
#A3D4D5
#7AA89F
#98BB6C
#938056
#C0A36E
#E6C384
#D27E99
#E46876
#FF5D62
#FFA066
#717C7C
