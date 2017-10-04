# wine script v1.10.0

Just a little sh scripts, debian package and a bash\zsh compiletion module for my personal use. Maybe someone will find it useful.
I position this as Play On Linux without bloatnes and dependencies like Python and GTK, because I don't need this. Actually it doesn't have some POL futures, but who cares, when you may use standart wine tools? I'm mostly follow [http://suckless.org/philosophy](Suckless philosophy).

## Changes
- Now using only futures from sh, so it can be run on most *NIX system. Anyway, I rarely used something from bash itself
- Separate binary and help files
- Carry out some repetitive functionality to lib

## wine
- Main binary, that actually running right version of wine, prefix and arch
- Kill wineserver just type wine -k
- Restore native resolution if resolution was change
- Running application in desktop mode (TODO)
- Using runtime library (like steam runtime) for not to install all that x86 library in system
- Cut off internet connection by one option (need firejail) (TODO)

## wine-update
- Downloading and install lastes wine staging (Debian-based\Ubuntu-based\Mint-based only)
- Downloading and install any version from POL (Including Linux, FreeBSD, Darwin all x86\x86_64) (TODO)

## wine-shortcut
- Create shortcut with wine exec. Like:
cd /folder_with_exe; wine -p=prefix exe

## wine-install
- Call winetricks with right wine and prefix

## wine-tools
Various tools to make life easier:
- Delete junk associations with useless wine soft. Why do you need them, if you're using *NIX, right?
- Sandboxing prefix by delete all links to $HOME without needed to using winetricks

## Configure file
Configure file must be locate in $HOME/.config/wine_helper/settings.conf. In repo root directory is an example settings.conf. File well documented.

## Dependings
Need for all binary:
- bash | sh | dash
- sed >= 4.x.x
- (g)awk >= 4.x

Need only for wine-install and wine-update
- wget >= 1.xx
- curl (any)
- html2text (any)

Sugession:
- firejail (any)
- winetricks (any)

## License
WTFPL v2
