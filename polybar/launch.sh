#!/usr/bin/env bash

# Add this script to your wm startup file.
DIR="$HOME/.config/polybar"

# Read internet interfaces (both wired and wireless)
readonly ETH=$(ip link | grep -m 1 -E '\b(en)' \
  | awk '{print substr($2, 1, length($2)-1)}')
readonly WIFI=$(ip link | grep -m 1 -E '\b(wl)' \
  | awk '{print substr($2, 1, length($2)-1)}')

# Find cpu temperature sensor
readonly CPU_TEMP=$(for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*})) $(readlink -f $i)"; done 
	| grep "coretemp: Package" 
	| sed -e 's/coretemp: Package id 0 //')

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q top -c "$DIR"/config.ini &
IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q bottom -c "$DIR"/config.ini &
IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q top2 -c "$DIR"/config.ini &
IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q bottom2 -c "$DIR"/config.ini &
