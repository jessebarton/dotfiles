#!/usr/bin/env bash

intern=eDP-1
# externHome=DP-1
extern1=DP-1-1
extern2=DP-1-2

if xrandr | grep "$extern1 connected" && xrandr | grep "$extern2 connected"; then
	xrandr --output eDP-1 --off --output DP-1 --off --output DP-2 --off --output DP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-3 --off
fi

if xrandr | grep "$extern1 disconnected" && xrandr | grep "$extern2 disconnected"; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output
fi
