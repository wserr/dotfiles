#!/bin/sh

percentage=$(acpi | awk '{print $4}' | sed 's/,//')
remaining=$(acpi | awk '{print $5}')
mode=$(acpi | awk '{print $3}' | sed 's/,//')

case $mode in
		  "Not")
					 mode_icon="󰁹"
					 percentage="full"
					 ;;
		  "Charging")
					 mode_icon="󰂄"
					 until_text="(󰁹 in $remaining)"
					 ;;
		  "Discharging")
					 mode_icon="󰁹"
					 until_text="(󱟟 in $remaining)"
					 ;;
		  *)
					 mode_icon="󰁹"
					 ;;
esac

echo $mode_icon $percentage $until_text
