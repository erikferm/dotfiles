#!/usr/bin/fish
# Kanagawa Fish shell theme
# A template was taken and modified from Tokyonight:
# https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish

set -l fujiWhite DCD7BA     # Default foreground
set -l oldWhite	C8C093      #	Dark foreground (statuslines)
set -l sumiInk0	16161D      #	Dark background (statuslines and floating windows)
set -l sumiInk1	1F1F28      #	Default background
set -l sumiInk2	2A2A37      #	Lighter background (colorcolumn, folds)
set -l sumiInk3	363646      #	Lighter background (cursorline)
set -l sumiInk4	54546D      #	Darker foreground (line numbers, fold column, non-text characters), float borders
set -l waveBlue1 223249     #	Popup background, visual selection background
set -l waveBlue2 2D4F67     #	Popup selection background, search background
set -l winterGreen 2B3328   #	Diff Add (background)
set -l winterYellow	49443C  #	Diff Change (background)
set -l winterRed 43242B     #	Diff Deleted (background)
set -l winterBlue	252535    #	Diff Line (background)
set -l autumnGreen 76946A   #	Git Add
set -l autumnRed C34043     #	Git Delete
set -l autumnYellow	DCA561  #	Git Change
set -l samuraiRed	E82424    #	Diagnostic Error
set -l roninYellow FF9E3B   #	Diagnostic Warning
set -l waveAqua1 6A9589     #	Diagnostic Info
set -l dragonBlue	658594    #	Diagnostic Hint
set -l fujiGray	727169      #	Comments
set -l springViolet1 938AA9 #	Light foreground
set -l oniViolet 957FB8     #	Statements and Keywords
set -l crystalBlue 7E9CD8   #	Functions and Titles
set -l springViolet2 9CABCA #	Brackets and punctuation
set -l springBlue	7FB4CA    #	Specials and builtin functions
set -l lightBlue A3D4D5     #	Not used
set -l waveAqua2 7AA89F     #	Types
set -l springGreen 98BB6C   #	Strings
set -l boatYellow1 938056   #	Not used
set -l boatYellow2 C0A36E   #	Operators, RegEx
set -l carpYellow	E6C384    #	Identifiers
set -l sakuraPink	D27E99    #	Numbers
set -l waveRed E46876       #	Standout specials 1 (builtin variables)
set -l peachRed	FF5D62      #	Standout specials 2 (exception handling, return)
set -l urimiOrange FFA066   # Constants, imports, booleans
set -l katanaGray	717C7C    #	Deprecated

# Syntax Highlighting Colors
set -g fish_color_autosuggestion $fujiGray
set -g fish_color_command $waveAqua2
set -g fish_color_comment $fujiGray
set -g fish_color_end $roninYellow
set -g fish_color_error $samuraiRed
set -g fish_color_escape $sakuraPink
set -g fish_color_keyword $sakuraPink
set -g fish_color_normal $fujiWhite
set -g fish_color_operator $autumnGreen
set -g fish_color_param $oniViolet
set -g fish_color_quote $boatYellow2
set -g fish_color_redirection $fujiWhite
set -g fish_color_search_match --background=$waveBlue2
set -g fish_color_selection --background=$waveBlue2

# Completion Pager Colors
set -g fish_pager_color_progress $fujiGray
set -g fish_pager_color_prefix $waveAqua2
set -g fish_pager_color_completion $fujiWhite
set -g fish_pager_color_description $fujiGray

#
#set -g fish_color_cwd $autumnGreen
set -g fish_color_dir $dragonBlue
#set -g fish_color_symlink $carpYellow
#set -g fish_color_user $oniViolet


## Git config
# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_git_prompt.fish
set -x __fish_git_prompt_char_stateseparator ""
set -x __fish_git_prompt_char_untrackedfiles "✗"
set -x __fish_git_prompt_color_branch --bold $autumnYellow
set -x __fish_git_prompt_color_flags --bold $peachRed
set -x __fish_git_prompt_color_prefix --bold $boatYellow2
set -x __fish_git_prompt_color_suffix --bold $boatYellow2
set -x __fish_git_prompt_show_informative_status true

