# wine script v1.9.0

Just a little script, debian package and a zsh compiletion module for my personal use.

## Changes
- Fix bugs
- Implement resolution change, if game overwrite it
- Fix wine-update code
- Separate help from binary

## wine-update
- Downloading and install lastes wine staging (Debian-based\Ubuntu-based\Mint-based only)
- Downloading and install any version from POL (Not implemented yet)

## wine-shortcut
- Create shortcut with wine exec. Like:
cd /folder_with_exe; wine -p=prefix exe

## Configure conf with file
Configure file must be locate in $HOME/.config/wine_helper/settings.conf. In repo root directory is an example settings.conf. File well documented.

## TODO
~~- Optimize get new version code
- Rewrite this to lua :D

## Dependings
- bash >= 4 | sh | dash
- wget >= 1.xx
- curl (any)
- sed >= 4.x.x
- (g)awk >= 4.x
- html2text (any)

## License
WTFPL v2
