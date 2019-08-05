#!/bin/bash

tmpbg="$(mktemp /tmp/lock.sh-XXXXXXXX.png)"
import -window root $tmpbg
convert $tmpbg -scale 5% -scale 2000% -colorize 25% $tmpbg

i3lock --nofork -i $tmpbg
rm $tmpbg
