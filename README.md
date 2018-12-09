# My dotfiles

Collection of dotfiles for \*nix environment

## vim

Using Vundle as a plugin manager: <https://github.com/VundleVim/Vundle.vim>

- Ensure term has `$TERM = xterm-256color`
- Copy `.vimrc` file into `~`
- Follow install instructions from Vundle

## bash

Not much here. For now using powerline-shell to beautify a bit:

```sh
$ sudo dpkg-reconfigure console-setup
```

after installing full fonts with nice gliphs and reboot.

- Install and follow instructions from <https://github.com/b-ryan/powerline-shell>
- Copy powerline-shell config file to `.config/powerline-shell/`

## i3

Small changes to default config to improve quality of life. Config file goes to ~/.config/i3/

- Ensure feh is installed, to set the wallpaper (it is commented out in the config file)
- Added Mod+n to rename workspaces
- Added some default workspaces for some applications

## i3status

As I normally use i3 only on desktop, removed battery readings and wireless connectivity, and added mount points with free disk. File goes to ~/.config/i3status
