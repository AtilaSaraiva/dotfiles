#!/bin/bash

#######

# Dependencies: pulseaudio, xprop
# Optional: compizconfig-settings-manager. To configure this script with a keyboard shortcut.

# USAGE: Focus the application you want to change its sink and run this script.

# This scripts detects the focused application, find all belonging sink-inputs and switch them to next sink.
# Intended to run with a shortcut.

#######

# Find PID of focused window
xid=$(xprop -root _NET_ACTIVE_WINDOW | awk '{print $NF}')
app_pid=$(xprop -id $xid _NET_WM_PID | awk '{print $NF}')
sink_list_array=( $(pacmd list-sinks | awk '/index:/{print $NF}') )
sink_list_size=${#sink_list_array[@]}

# Linearizes sink-inputs, showing index, sink and pid on a same line, and iterate through each line.
pacmd list-sink-inputs | grep -E 'index:|sink:|process.id' | tr '\n' ' ' | tr -d '"' | sed -e 's/index:/\n/g' | tail -n +2 | while IFS= read -r line || [ -n "$line" ]; do
  sink_input_pid=$(echo $line | awk '{print $NF}')
  # Check if sink-input's app matches with the focused app
  if [ $sink_input_pid = $app_pid ]; then

    sink_input_index=$(echo $line | awk '{print $1}')
    current_sink_index=$(echo $line | awk '{print $3}')

    i=0
    for sink in "${sink_list_array[@]}"; do
      i=$((($i+1)%sink_list_size)) #i++
      if [ $sink = $current_sink_index ]; then
        next_sink_index=${sink_list_array[i]}
        break
      fi
    done
    pacmd move-sink-input $sink_input_index $next_sink_index
  fi
done
