#!/bin/bash

sh .load_trayer.sh

xsetroot -solid black

xchat &

xscreensaver -no-splash &

if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi

if [ -x /usr/bin/gnome-power-manager ] ; then
   sleep 3
   gnome-power-manager &
fi

xmonad | xmobar

sh .autorandr
