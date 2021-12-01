#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch polybar
polybar top &

if type "xrandr"; then
    killall -q polybar
    i=0
    #for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        #MONITOR=$m polybar --reload top &
        #i=i+1
    #done
    #MONITOR=HDMI-0 polybar --reload 21 &
    #MONITOR=DVI-D-0 polybar --reload 22 &
    MONITOR=HDMI-A-0 polybar --reload 21 &
    MONITOR=HDMI-A-1 polybar --reload 22 &
    #MONITOR=HDMI-A-1 polybar --reload top &
else
    polybar --reload top &
fi
