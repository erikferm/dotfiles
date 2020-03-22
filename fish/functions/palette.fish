function palette
  set colors 16 17 22 23 29 30 37 52 53 66 70 71 74 87 103 112 125 140 148 173 177 178 179 205 208 214 226 233 234 235 236 237 239 240 244 250 251 252
  for a in $colors
    set c (colour256toHex $a)
    set conf (cat ~/.config/fish/fish_variables | grep $c | sed 's/SETUVAR//g' | cut -d ':' -f 1)
    set_color $c
    echo "$c $conf"
  end
end

