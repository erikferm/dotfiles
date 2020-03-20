function fish_prompt
  set curr_dir (pwd)
  printf '%s/%s%s $ ' \
    (set_color --bold $fish_color_user && basename $curr_dir) \
    (set_color normal) \
    (fish_git_prompt)
end
