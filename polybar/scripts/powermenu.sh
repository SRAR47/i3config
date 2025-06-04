#!/bin/bash

# Options for the menu
OPTIONS="\tLock\n\tShutdown\n\tReboot\n\tSuspend\n\tLogout"

# Use rofi to select an option
CHOICE=$(echo -e $OPTIONS | rofi -dmenu -i -p "Power Menu")

# Execute the selected option
case "$CHOICE" in
    
    "  Shutdown")
        systemctl poweroff
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "  Suspend")
        systemctl suspend
        ;;
    "  Logout")
        # Assuming i3, replace if using a different WM
        i3-msg exit
        ;;
esac

