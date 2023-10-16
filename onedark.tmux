#!/bin/bash

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

home_prefix="🐧"
right_prefix=""
left_prefix=""

# active status bar
tmux set-option -gq status on

tmux set -g status-left-length 100
tmux set -g status-right-length 100

tmux set -g status-interval 1

tmux set -g status-justify left

tmux set -g status-bg $color_black
tmux set -g status-fg $color_white

tmux set -g "@prefix_highlight_output_prefix" ""

tmux set -g status-left "#[fg=$color_black,bg=$color_green]$right_prefix#S#[fg=$color_green,bg=$color_black]$right_prefix #{prefix_highlight}"

tmux set -g status-right "#[fg=$color_green,bg=$color_black,bold]$left_prefix#[fg=$color_black,bg=$color_green,bold]$left_prefex$date_format#[fg=$color_black,bg=$color_green,bold]$left_prefix#[fg=$color_white,bg=$color_black,bold]$time_format #[fg=$color_green,bg=$color_black,bold]$left_prefix#[fg=$color_black,bg=$color_green,bold]#h#[fg=$color_black,bg=$color_green,bold]$left_prefix"
