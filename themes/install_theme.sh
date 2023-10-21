#!/bin/bash

SCHEMA_NAME="org.gnome.shell.extensions.user-theme.gschema.xml"
SCHEMAS_PATH="$HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas"
GNOME_SCHEMAS_PATH="/usr/share/glib-2.0/schemas"

if ! command -v gnome-tweaks &> /dev/null; then
   echo "gnome-tweaks tool is not installed. Installing it.."
   sudo apt-get install gnome-tweaks -y
fi

if ! gnome-extensions list | grep -q 'user-theme@gnome-shell-extensions.gcampax.github.com'; then
  echo "User Themes extension is not installed. Please install it and try again later."
  echo "https://extensions.gnome.org/extension/19/user-themes/"
  exit 1
  gnome-extensions install user-theme@gnome-shell-extensions.gcampax.github.com
fi

if [ ! -f "$GNOME_SCHEMAS_PATH/$SCHEMA_NAME" ]; then
   # For some reason user-theme schema is not created by default
   echo "Manually creating the org.gnome.shell.extensions.user-theme schema.."
   sudo cp $SCHEMAS_PATH/$SCHEMA_NAME $GNOME_SCHEMAS_PATH
   sudo glib-compile-schemas $GNOME_SCHEMAS_PATH
fi

gsettings set org.gnome.shell.extensions.user-theme name "Dracula"
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Flatery-Indigo-Dark"
gsettings set org.gnome.desktop.interface cursor-theme "Adwaita"
