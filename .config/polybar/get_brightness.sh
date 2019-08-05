printf '%.0f%%\n' $(echo "scale=4; last=0; $(cat /sys/class/backlight/intel_backlight/actual_brightness) / $(cat /sys/class/backlight/intel_backlight/max_brightness) *100" | bc)

