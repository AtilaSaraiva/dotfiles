#!/usr/bin/env zsh
# requires jq

IFS=:
swaymsg -t get_outputs | jq -r '.[]|"\(.name):\(.current_workspace)"' | grep -v '^null:null$' | \
while read -r name current_workspace; do
    echo "moving ${current_workspace} right..."
    swaymsg workspace "${current_workspace}"
    swaymsg move workspace to output right
done
