# Artix/Arch rice(L0cky <https://l0cky.xyz>'s  dotfiles)
There are dotfiles deployed by [LIS](https://github.com/Luharion/Lis.git).

- very useful scripts in ~/.local/bin
- settings for
	- ZSH
	- vim/nivm
	- mpd/ncmpcpp
	- sxiv
	- mpv
	- other stuff like xdg default programs, inputrc and more, etc.
- Try to clean up what's in '~' so:
	- All config can be found in ~/.config
	- Some environmental variables have been set in `~/.zprofile` to move configs into `~/.config/`

- Bookmarks in text files used by various scripts (like `~/.local/bin/shortcuts`)
	- File bookmarks in `~/.config/shell/bm-files`
	- Directory bookmarks in `~/.config/shell/bm-dirs`

## Usage
These dotfile are supposed to go with my WM, Terminal, and etc:
- [dwm](https://github.com/Luharion/dwm) (Window manager)
- [st](https://github.com/Luharion/st) (Terminal Emulator
- [dwmblocks](https://github.com/Luharion/dwmblocks) (status bar)

# Install all the dotfiles and dependcy

use [LIS](https://l0cky.xyz/lis.sh) to autoinstall everything:
```
curl -LO https://l0cky.xyz/lis.sh
```
or clone the repo files directly to your home directory and install the
[dependencies](https://github.com/Luharion/Lis/blob/master/progs.csv).

Thank you for checking out my repo!
