Adding some initial configuration files

## Dependencies

###  Arch

sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim 

fzf firefox npm man nodejs go clang cmake yaml-cpp bat stow lua-language-server python-pipx wireshark cargo nvim-treesitter-cli

#NOTE: need to install some of the language packages / npm above for neovim mason languages to be installable

# TODO: npm pyright, @vtsls/language-server
# TODO: cargo neocmake
# TODO: pipx

### Installing the JetBrains Mono NerdFont
sudo pacman -S ttf-jetbrains-mono-nerd

Run $kitten choose-fonts and select the installed font

NOTE: kitty change font size increase decrease by smaller amount

### Mapping caps lock to escape
Since I am currently running the gnome desktop env -- and am on other computers as 
well I'm following this pattern 

Install gnome-tweak-tools and run the application -- In the "Keyboard/Additional Layout Options" section I can make this switch

sudo pacman -S gnome-tweaks

### New Mapping caps lock to escape -- follow steps at the following
https://ejmastnak.com/tutorials/arch/caps2esc/

#### NOTE: the mapping above worked but was super slow
Since i'm using hyprland I just set the following setting in my hyprland.conf

...
input {
    kb_options = caps:escape
}
...

It worked like a charm

### Kitty -- follow "Binary install" and "Desktop integration on Linux"
https://sw.kovidgoyal.net/kitty/binary/

### Installing thinkfan

Arch User Repo -- building and then installing with pacman

#### https://wiki.archlinux.org/title/Arch_User_Repository

Acquire the build files including PKGBUILD and other required files

- NOTE: did this by downloading snapshot (under package actions) gave me a tarball -- thinkfan.tar.gz

Extracted tarball in ~/packages/ (NOTE: using this as a store of downloaded packages to extract etc... -- may want to differentiate extracted vs packages) $ tar -xf <tarball> 

$ makepkg

 Then ran makepkg within the thinkfan directory (in this example -- run it within the extracted dir)

NOTE: some make commands are added (particularly MAKEFLAGS) by /etc/makepkg.conf -- I upped the parallel commands

Install the package_file with pacman:

NOTE: package_file format: package_name-version-architecture.pkg.tar.zst

Command: 
    $ pacman -U package_name-version-architecture.pkg.tar.zst

$ sensors
    Gives temperature readout of sensors etc...

### Keyboard backlight and media keys 

See article: https://wiki.archlinux.org/title/Hyprland#Media_keys

sudo pacman -S brightnessctl
sudo pacman -S pamixer playerctl

### Waybar theme taken from:
https://github.com/knightfallxz/Hyprland-Custom-Configuration/blob/Hypr-Config-3.0/waybar/Waybar-3.0/config

### GTK APP theme
https://aur.archlinux.org/packages/tokyonight-gtk-theme-git

### wofi power menu
https://github.com/acarl005/dotfiles/blob/master/waybar/scripts/power-menu.sh

