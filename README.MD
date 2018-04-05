# wine script v1.11.0

Just a little sh scripts, debian package and a bash\zsh compiletion module for my personal use. Maybe someone will find it useful.
I position this as Play On Linux without bloatnes and dependencies like Python and GTK, because I don't need this. Actually it doesn't have some POL futures, but who cares, when you may use standart wine tools?

## wine
- Main binary, that actually running right version of wine, prefix and arch
- Kill wineserver just by typing: $ wine -k
- Restore native resolution if resolution was change
- Running application in desktop mode
- Using runtime library (like steam runtime) for not to install all that x86 library in system
- Cut off internet connection by one option (need firejail) (TODO)
- Delete all reference to $HOME directory automaticly, if this option is enable in settings.conf
- Enable or disable CMST for both vanila and staging wine (TODO)

## wine-update
- Downloading and install any version from POL for Linux (Including FreeBSD, Darwin all x86\x86_64: TODO)
- Downloading and install any version from Lutris (for Linux only)

## wine-shortcut
- Create shortcut with wine exec. Like:
cd /folder_with_exe; wine -p=prefix exe
- Detect unity game and add render option (can be configured through settings.conf)

## wine-install
- Call winetricks with right wine and prefix

## wine-tools
Various tools to make life easier:
- Delete junk associations with useless wine soft. Why do you need them, if you're using *NIX, right?
- Sandboxing prefix by delete all links to $HOME without needed to using winetricks

## Configure file
First you need to copy settings.conf from /usr/local/etc/wine_helper to $HOME/.config/wine_helper/ . Using in-file instructions configure it.

## Dependings
Need for all binary:
- bash | sh | dash
- sed >= 4.x.x
- (g)awk >= 4.x

Need only for wine-install and wine-update
- wget >= 1.xx
- curl
- html2text

Need for wine-shortcut
- p7zip-full

Sugession:
- firejail
- winetricks (wine-install can download by himself)
- glxosd

## License
WTFPL v2
