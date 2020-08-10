#!/bin/bash
# Creates a Rofi menu to provide options regarding system state - including lock,
# logout, poweroff, restart, et cetera.
#
# For use with the i3 window manager. Pass in a path to a Rofi theme and that theme
# will be used. If Rofi is not installed, dmenu will be used.
#
# Created by Leo Tindall, 2018; licensed CC0.

launcher="rofi" # dmenu/rofi
action_list="logout\nreboot\nshutdown\n"

# If dmenu is selected but not installed, fall back to rofi
if [ "$launcher" == "dmenu" ]; then
   if ! (command -v dmenu 2>/dev/null); then
      echo "dmenu not installed, trying rofi..."
      if command -v rofi 2>/dev/null; then
         launcher=rofi
      else
         echo "rofi not installed either, aborting..."
         exit 1
      fi
   fi
fi

# If rofi is selected but not installed, fall back to dmenu
if [ "$launcher" == "rofi" ]; then
   if ! (command -v rofi 2>/dev/null); then
      echo "dmenu not installed, trying dmenu..."
      if command -v dmenu 2>/dev/null; then
         launcher=dmenu
      else
         echo "dmenu not installed either, aborting..."
         exit 1
      fi
   fi
fi


# Defines how to use Rofi, with or without a theme
_rofi () {
    if [ "$#" -gt "0" ]; then
      rofi -dmenu -i -sync -theme "$1" -p "sys:"
    else
      rofi -dmenu -i -sync -p "sys:"
    fi
}

# Defines how to use dmenu
_dmenu () {
   dmenu -i -l 10 -p "sys:"
}


# Pop a launcher to get the user's selection
if [ "$launcher" == "dmenu" ]; then
   selected_string=$(echo -e "$action_list" | _dmenu "$@")
elif [ "$launcher" == "rofi" ]; then
   selected_string=$(echo -e "$action_list" | _rofi "$@")
fi

# Select the correct action based on the user's input
if [ "$selected_string" == " logout" ]; then
    i3 exit 
elif [ "$selected_string" ==" reboot" ]; then
    reboot
elif [ "$selected_string" == " shutdown" ]; then
    poweroff 

fi
