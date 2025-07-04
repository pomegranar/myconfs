#!/usr/bin/env bash
# Dynamic outer padding for Hyprland

# Configuration
MAX_PAD=60        # px when only one window
MIN_PAD=8         # px minimum
DEC_STEP=8        # px decrement per extra window

hyprwatch clients -p | \
  jq -c 'select(.event=="clients")' | \
  while read -r _; do
    # Count only tile-mode clients on the focused workspace
    count=$(hyprctl clients | jq '[.[] | select(.workspace=="'"$(hyprctl -j activeworkspace | jq -r '.id')"'" and .tiled==true)] | length')

    # Compute new padding
    new_pad=$(( MAX_PAD - (count-1)*DEC_STEP ))
    (( new_pad < MIN_PAD )) && new_pad=$MIN_PAD

    # Apply
    hyprctl keyword general:gaps_out $new_pad
  done

