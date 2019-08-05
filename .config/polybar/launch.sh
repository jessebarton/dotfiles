#!/usr/bin/env bash

#Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

intern=eDP-1
# externHome=DP-1
extern1=DP-1-1
extern2=DP-1-2

MONITOR=eDP-1 polybar --reload top &
MONITOR=eDP-1 polybar --reload bottom &

if xrandr | grep "$extern1 connected" && xrandr | grep "$extern2 connected"; then
	xrandr --output eDP-1 --off --output DP-2 --off --output DP-1 --off --output DP-1-3 --off --output DP-1-2 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
    MONITOR=DP-1-1 polybar --reload top &
    MONITOR=DP-1-1 polybar --reload bottom &
    MONITOR=DP-1-2 polybar --reload bottom &
fi

# if xrandr | grep "$externHome connected"; then
#     xrandr --output DP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --off
#     MONITOR=DP-1 polybar --reload top &
#     MONITOR=DP-1 polybar --reload bottom &
# fi

# if xrandr | grep "$externHome disconnected" && xrandr | grep "$extern1 disconnected"; then
#     xrandr --output eDP-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-2-1 --off --output DP-1 --off
#     MONITOR=eDP-1 polybar --reload top &
#     MONITOR=eDP-1 polybar --reload bottom &
# fi

echo "Bars Launched..."
