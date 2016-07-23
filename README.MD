# wine script v1.6.2

Just a little script, debian package and a zsh compiletion module for my personal use.

## Changes
- Try to separate binary
- Fix bugs

## wine-update
- Downloading and install lastes wine staging (Debian-based\Ubuntu-based\Mint-based only)
- Downloading and install any version from POL (Not implemented yet)

## wine-shortcut
- Create shortcut with wine exec. Like:
cp /folder_with_exe; wine -p=prefix exe

## Configure conf with file
Configure file must be locate in $HOME/.config/wine_helper/settings.conf. In repo root directory is an example settings.conf. File well documented.

## TODO
- Optimize get new version code
- Debian package (I'm lazy)

## Dependings
- bash >= 4
- wget >= 1.xx
- sed >= 4.x.x

## License
Apache License, Version 2.0
