#!/usr/bin/env bash

dir="$HOME/.config/polybar"
themes=(`ls --hide="launch.sh" $dir`)

readonly ETH=$(ip link | grep -m 1 -E '\b(en)' \
  | awk '{print substr($2, 1, length($2)-1)}')
readonly WIFI=$(ip link | grep -m 1 -E '\b(wl)' \
  | awk '{print substr($2, 1, length($2)-1)}')
readonly CPU_TEMP=$(for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*})) $(readlink -f $i)"; done 
	| grep "coretemp: Package" 
	| sed -e 's/coretemp: Package id 0 //')


launch_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	# Launch the bar
	if [[ "$style" == "hack" || "$style" == "cuts" ]]; then
		IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q top -c "$dir/$style/config.ini" &
		IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q bottom -c "$dir/$style/config.ini" &
		IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q top2 -c "$dir/$style/config.ini" &
		IF_TMP=${CPU_TEMP} IF_ETH=${ETH} IF_WIFI=${WIFI} polybar -q bottom2 -c "$dir/$style/config.ini" &
	elif [[ "$style" == "pwidgets" ]]; then
		bash "$dir"/pwidgets/launch.sh --main
	else
		polybar -q main -c "$dir/$style/config.ini" &	
	fi
}

if [[ "$1" == "--material" ]]; then
	style="material"
	launch_bar

elif [[ "$1" == "--shades" ]]; then
	style="shades"
	launch_bar

elif [[ "$1" == "--hack" ]]; then
	style="hack"
	launch_bar

elif [[ "$1" == "--docky" ]]; then
	style="docky"
	launch_bar

elif [[ "$1" == "--cuts" ]]; then
	style="cuts"
	launch_bar

elif [[ "$1" == "--shapes" ]]; then
	style="shapes"
	launch_bar

elif [[ "$1" == "--grayblocks" ]]; then
	style="grayblocks"
	launch_bar

elif [[ "$1" == "--blocks" ]]; then
	style="blocks"
	launch_bar

elif [[ "$1" == "--colorblocks" ]]; then
	style="colorblocks"
	launch_bar

elif [[ "$1" == "--forest" ]]; then
	style="forest"
	launch_bar

elif [[ "$1" == "--pwidgets" ]]; then
	style="pwidgets"
	launch_bar

elif [[ "$1" == "--panels" ]]; then
	style="panels"
	launch_bar

else
	cat <<- EOF
	Usage : launch.sh --theme
		
	Available Themes :
	--blocks    --colorblocks    --cuts      --docky
	--forest    --grayblocks     --hack      --material
	--panels    --pwidgets       --shades    --shapes
	EOF
fi
