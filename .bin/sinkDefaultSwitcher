#!/bin/bash

#######

# Dependencies: pulseaudio
# USAGE: Execute script and default sink will switch

#######

sink_list_array=( $(pacmd list-sinks | awk '/index:/{print $NF}') )
sink_list_size=${#sink_list_array[@]}

current_sink_index=$(pacmd list-sinks | awk '/* index:/{print $NF}')

i=0
for sink in "${sink_list_array[@]}"; do
  i=$((($i+1)%sink_list_size)) #i++
  echo $sink $i $current_sink_index
  if [ $sink = $current_sink_index ]; then
    next_sink_index=${sink_list_array[i]}
    break
  fi
done
pacmd set-default-sink $next_sink_index
