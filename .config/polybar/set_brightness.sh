level=$(printf %.0f $(echo "scale=4;$1/100*$(cat /sys/class/backlight/intel_backlight/max_brightness)" | bc))

if [ $level -gt 46 ]
then
	sudo tee /sys/class/backlight/intel_backlight/brightness <<< $level 1>/dev/null
	echo "Screen brightness set to $1%."
else
	echo "Screen brightness requested less than 5%.  Not changed."
fi