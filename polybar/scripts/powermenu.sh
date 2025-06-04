#!/bin/bash

# Options for the menu
#!/bin/bash

# Define menu options (no lock)
OPTIONS="  Shutdown\n  Reboot\n  Suspend\n  Logout"

# Show rofi menu
CHOICE=$(echo -e "$OPTIONS" | rofi -dmenu -p "Power Menu")

# Perform action based on choice
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
        i3-msg exit
        ;;
    *)
        exit 1
        ;;
esac


