#!/bin/sh
xrandr --output DisplayPort-0 --mode 1920x1080 --rate 165.00
xinput --set-prop "SteelSeries SteelSeries Rival 110 Gaming Mouse" 'libinput Accel Profile Enabled' 0, 1
picom -b --config ~/.config/picom.conf
feh --bg-fill ~/Pictures/wallpapers/ign_chomusuke.png
xbindkeys

# Status bar dwm
dte() {
        dte="$(date +"%m.%d | %H:%M")"
        echo -e "$dte"
}
mem() {
       	mem=`free | awk '/Mem/ {printf "%d/%d\n", $3 / 1024.0, $2 / 1024.0}'`
         echo -e "$mem"
}
#temperatura cpu
f=$(cat /sys/class/thermal/thermal_zone2/temp)
t=$(echo $f | cut -b -2)$(echo $f | cut -b 6-)°C

while true; do
        xsetroot -name "cpu:$t | $(mem) | $(dte)"
        sleep 10s #update time every something
done &
