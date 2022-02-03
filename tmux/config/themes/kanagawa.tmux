
# Styles
#set -g status-style bg=colour234,fg=colour179,bold
set -g status-style bg=default,fg=default,bold
#set -g window-status-current-style fg=colour234,bg=colour66
set -g window-status-current-style fg=default,bg="colour104"

# Format
set -g window-status-format " #I #W "
set -g window-status-current-format " #I #W "
set -g status-left ""

set -g status-right "\
#[fg=red]#{?window_zoomed_flag,ZOOMED,}\
#[fg=colour104,bg=default] %H:%M - %d %b %Y \
#{battery_color_charge_fg}#[bg=default]#{battery_percentage}"

# Colouring 
set -g window-style bg=default
set -g pane-border-style bg=colour234,fg=colour179
set -g pane-active-border-style bg=colour234,fg=colour104
