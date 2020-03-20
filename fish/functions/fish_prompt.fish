function fish_prompt
  set curr_dir (pwd)
  printf '%s%s~> ' \
    (set_color $fish_color_user && basename $curr_dir) \
    (fish_git_prompt)
end
