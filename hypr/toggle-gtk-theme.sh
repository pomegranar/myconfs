#!/bin/bash
export $(dbus-launch)

# Get current GTK theme
theme=$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d '\"')

# Define your dark and light theme names (you can adjust these)
LIGHT_THEME="Adwaita"
DARK_THEME="Adwaita-dark"

if [[ "$theme" == "$DARK_THEME" ]]; then
    gsettings set org.gnome.desktop.interface gtk-theme "$LIGHT_THEME"
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
else
    gsettings set org.gnome.desktop.interface gtk-theme "$DARK_THEME"
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi

# Notify user (optional, if you use dunst or similar)
notify-send "GTK Theme Toggled" "Now using: $(gsettings get org.gnome.desktop.interface gtk-theme)"

