#!/bin/bash

TMUX_PLUGIN_MANAGER_PATH=$HOME/.tmux/plugins/

# OneDark Color Scheme
color_black="#282c34"
color_white="#abb2bf"
color_red="#e06c75"
color_dark_red="#be5046"
color_green="#98c379"
color_light_yellow="#e5c07b"
color_dark_yellow="#d19a66"
color_blue="#61afef"
color_magenta="#c678dd"
color_cyan="#56b6c2"
color_gutter_grey="#4b5263"
color_comment_grey="#5c6370"

time_format=%H:%M:%S
date_format=%Y-%m-%d

status_left_prefix=""
status_right_prefix=""

# active status bar
tmux set-option -gq status on

tmux set -g status-left-length 100
tmux set -g status-right-length 100

tmux set -g status-interval 1

tmux set -g status-justify left

tmux set -g status-bg $color_gutter_grey
tmux set -g status-fg $color_white

tmux set -g @prefix_highlight_fg $color_white
tmux set -g @prefix_highlight_bg $color_black

tmux set -g @prefix_highlight_empty_has_affixes 'on' # default is 'off'
tmux set -g @prefix_highlight_empty_prompt "#[fg=$color_white]#[bg=$color_black]Tmux"

tmux set -g "@prefix_highlight_output_prefix" "#[fg=$color_white]#[bg=$color_black]"
tmux set -g @prefix_highlight_output_suffix "#[fg=$color_black]#[bg=$color_gutter_grey]$status_left_prefix"

tmux set -g status-left "#[fg=$color_black,bg=$color_green,bold]$status_left_prefix#S#[fg=$color_green,bg=$color_black,bold]$status_left_prefix#{prefix_highlight}#[fg=$color_red,bg=$color_red,bold]"

tmux set -g status-right "#[fg=$color_black,bg=$color_gutter_grey,bold]$status_right_prefix#[fg=$color_white,bg=$color_black]#($TMUX_PLUGIN_MANAGER_PATH/tmux-mem-cpu-load/tmux-mem-cpu-load --interval 2)#[fg=$color_green,bg=$color_black,bold]$status_right_prefix#[fg=$color_black,bg=$color_green,bold]$date_format#[fg=$color_black,bg=$color_green,bold]$status_right_prefix#[fg=$color_white,bg=$color_black,bold]$time_format #[fg=$color_green,bg=$color_black,bold]$status_right_prefix#[fg=$color_black,bg=$color_green,bold]#h#[fg=$color_black,bg=$color_green,bold]$status_right_prefix"
