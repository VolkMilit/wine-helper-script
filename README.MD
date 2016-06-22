# wine script v1.6.0

Just a little script, debian package and a zsh compiletion module for my personal use.

## Changes
- Fix some bugs
- Now script detect if prefix is 32bit
- Now script read settings from conf file

## Configure conf with file
Configure file must be locate in $HOME/.config/wine_helper/settings.conf. In repo root directory is an example settings.conf. File well documented.

## TODO
- Shorter WINEPREFIX path usage
- Optimize get new version code
- Debian package (I'm lazy)

## Dependings
- bash >= 4
- wget >= 1.xx
- sed >= 4.x.x

## License
Apache License, Version 2.0
