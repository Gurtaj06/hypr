#!/bin/bash

# Опции
shutdown='󰐥  Power Off'
reboot='󰜉  Reboot'
lock='  Lock'
hibernate='󰤄  Hibernate'
logout='󰗼  Logout'

# Действия
chosen=$(echo -e "$lock\n$hibernate\n$logout\n$reboot\n$shutdown" | rofi -dmenu -p "Power Menu" -theme ~/.config/rofi/powermenu.rasi)
case ${chosen} in
$shutdown)
	systemctl poweroff
	;;
$reboot)
	systemctl reboot
	;;
$lock)
	gtklock
	;;
$hibernate)
	systemctl hibernate
	;;
$logout)
	hyprctl dispatch exit 0
	;;
esac
