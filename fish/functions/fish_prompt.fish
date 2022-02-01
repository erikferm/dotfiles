function fish_prompt
  set curr_dir (pwd)
  printf '%s' \
    (set_color --bold $fish_color_dir && basename $curr_dir)'/' \
    (fish_git_prompt) (set_color $fish_color_char) ' 字 '
end
