#!/bin/bash
up=$(uptime -p | sed -e 's/ days/D/g' | sed -e 's/ minutes/m/g' | sed -e 's/ hours/H/g' | sed -e 's/ day/D/g' | sed -e 's/ minute/m/g' | sed -e 's/ hour/H/g' | sed -e 's/,//g' | sed -e 's/up/⮝/g')
echo $up
