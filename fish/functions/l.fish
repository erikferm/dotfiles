function l

  function _print_with_flag -a before color dir
    printf "%s%s %s\n" $before (set_color $color) $dir
    set_color normal
  end

  function _print
    for a in $argv
      echo $a
    end
  end

  function get_filename -a line
    string match -r -- "(.*\d) (.*)" $line
  end

  function _no_flag
    set dirs
    set files
    set symlinks
    for a in $argv
      if test -d $a
        set -a dirs "$a/" | sort
        continue
      end
      if test -e $a
        set -a files $a | sort
      end
      if test -L $a
        set -a symlinks $a | sort
      end
    end
    set_color $fish_color_dir
    _print $dirs
    set_color normal
    _print $symlinks
    set_color normal
    _print $files
  end

  function _with_flag
    set dirs
    set files
    set symlinks
    set rest

    for a in $argv[2..-1]
      set line (echo $a | string split ' ')
      if echo $line | grep -q "^d"
        set dirname (get_filename $a)
        set -a dirs "$dirname[3];$dirname[2]" | sort
        continue
      end
      if echo $line | grep -q "^-"
        set dirname (get_filename $a)
        set -a files "$dirname[3];$dirname[2]" | sort
        continue
      end
      if echo $line | grep -q "^l"
        set dirname (get_filename $a)
        set -a symlinks "$dirname[3];$dirname[2]" | sort
        continue
      end
      set dirname (get_filename $a)
      set -a rest "$dirname[3];$dirname[2]" | sort
    end
    
    #_print $dirs
    echo $argv[1] 
    for a in $dirs
      set d (echo $a | string split ';')
      _print_with_flag $d[2] $fish_color_dir "$d[1]/"
    end
    for a in $symlinks
      set d (echo $a | string split ';')
      _print_with_flag $d[2] $fish_color_symlink $d[1]
    end
    for a in $files
      set d (echo $a | string split ';')
      _print_with_flag $d[2] normal $d[1]
    end
    for a in $rest
      set d (echo $a | string split ';')
      _print_with_flag $d[2] normal $d[1]
    end
  end

  set out (command ls $argv)
  if not echo $argv | grep -q "^-"
    _no_flag $out
  else
    _with_flag $out
  end
end
