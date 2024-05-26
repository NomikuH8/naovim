#!/bin/sh

config_directory="~/.config/nvim"

if [ -d config_directory ]; then
  echo "Configuration directory exists, renaming it"
  mv config_directory ~/.config/nvim.bak
fi

echo "Creating configuration directory"
mkdir config_directory

echo "Copying all files to the configuration directory"
cp -r ./* config_directory

echo "Finished, enjoy Naovim! :D"

