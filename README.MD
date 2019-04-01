# wine script v1.13.0

Just a little sh scripts, debian package and a bash\zsh compiletion module for my personal use. Maybe someone will find it useful.
I position this as Play On Linux without bloatnes and dependencies like Python and GTK, because I don't need this. Actually it doesn't have some POL futures, but who cares, when you may use standart wine tools?

Now support both Debian and Arch Linux. For example, I use AUR overlay to install wine-tkg in /opt and at the same time I have wine-staging installed in /usr.

### winew
winew abbreviation for wine-wrapper.
- Main binary, that actually running right version of wine, prefix and arch
- Kill wineserver just by typing: $ wine -k
- Restore native resolution if resolution was change
- Using runtime library (like steam runtime) for not to install all that x86 library in system
- Delete all reference to $HOME directory automaticly, if this option is enable in settings.conf
- Running application in desktop mode
- Cut off internet connection by one option (need firejail) (TODO)
- Enable or disable CMST for both vanila and staging wine (TODO)
- Enable esync or pba or both
- Enable DXVK fps overlay
- Separate wine usage, for example use system wine (e.g. installed in /usr, not in /opt)

### wine-shortcut
- Create shortcut with wine exec. Like:
cd /folder_with_exe; wine -p=prefix exe
- Detect unity game and add render option (can be configured through settings.conf)

### wine-install
- Call winetricks with right wine and prefix

### wine-tools
Various tools to make life easier:
- Delete junk associations with useless wine soft. Why do you need them, if you're using *NIX, right?
- Sandboxing prefix by delete all links to $HOME without needed to using winetricks

### Configure file
First you need to copy settings.conf from /usr/local/etc/wine_helper to $HOME/.config/wine_helper/ . Using in-file instructions configure it.

## Dependings
- bash | sh | dash
- sed >= 4.x.x
- (g)awk >= 4.x
- curl
- p7zip-full
- winetricks

## Build package
### Debian and derevatives
$ ./build-package.sh
- Install wine_helper_ver.deb

### Arch and derevatives
$ makepkg -fi

## License
WTFPL v2
