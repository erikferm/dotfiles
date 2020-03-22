function print_colors
  set output

  for a in (seq 0 255)
    set -a output (colour256toHex $a)
    
    if test (count $output) -gt 3
      printf "%s %s %s %s\n" \
        (set_color $output[1]; and echo $output[1]) \
        (set_color $output[2]; and echo $output[2]) \
        (set_color $output[3]; and echo $output[3]) \
        (set_color $output[4]; and echo $output[4])
      set output
    end
  end
end

