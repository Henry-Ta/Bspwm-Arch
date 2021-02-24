# bspwm-arch
## Step 1: active wifi from Network Manager
```
$ nmtui
$ sudo pacman -Syy
```

```
$ sudo pacman -S xf86-video-intel (xf86-video-amdgpu) (nvidia-lts nvidia-settings) xorg xorg-xinit bspwm sxhkd rofi nitrogen picom maim kitty qutebrowser chromium lxappearance (arc-gtk-theme papirus-icon-theme) vlc gimp thunar file-roller pavucontrol bash-completion lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings pacman-contrib neofetch galculator evince gufw clamtk nodejs npm ctags  gpicview ranger the_silver_searcher  openssh

```
 
```
$ mkdir .config/bspwm .config/sxhkd .config/polybar
$ cp /usr/share/doc/bspwm/examples/bspwmrc .config/bspwm/
$ cp /usr/share/doc/bspwm/examples/sxhkdrc .config/sxhkd/
$ chmod +x .config/bspwm/bspwmrc
$ chmod +x .config/sxhkd/sxhkdrc

$ nvim .config/sxhkd/sxhkdrc
$ nvim .config/bspwm/bspwmrc

```
```
$ cp /etc/X11/xinit/xinitrc .xinitrc
$ nvim .xinitrc

sxhkd &
exec bspwm
```
```
$ sudo systemctl enable lightdm
```

## Post Installation

#### Install Yay
```
$ cd /opt
$ sudo git clone https://aur.archlinux.org/yay.git
$ sudo chown -R henry:users ./yay
$ cd yay
$ makepkg -si
```

```
$ yay -S polybar pamac-aur zoom betterlockscreen gotop heroku-cli (optimus-manager)
```

```
$ cp /usr/share/doc/polybar/config .config/polybar/ 
$ nvim .config/polybar/config
$ chmod +x .config/polybar/launch.sh
```

## Set up Betterlockscreen
```
$ sudo pacman -S xorg-xdpyinfo xorg-xrandr bc feh
$ betterlockscreen -u Pictures/arch.png -b 1.0
```

## Set up Pamac Manager
```
$ su
$ cd /etc/polkit-1/rules.d
$ nvim 99-pamac.rules

polkit.addRule(function(action, subject) {
	if (action.id.indexOf("org.freedesktop.pamac-manager.")) {
		return polkit.Result.YES;
	}
});
```

## Remove orphans
```
$ sudo pacman -Qtdq
$ sudo pacman -Rns $(pacman -Qtdq)
```

## Update core editor of git
```
$ git config --global core.editor 'nvim'
```

## Configure Lightdm
```
$ sudo pacman -S lightdm-gtk-greeter-settings

Note: Put PNG or JPG images in /usr/share/pixmaps
```

## Fonts
```
$ sudo pacman -S otf-font-awesome otf-cascadia-code ttf-fira-code ttf-droid ttf-joypixels ttf-nerd-fonts-symbols
```

## Configure Powerline Terminal
```
OSH_THEME="cupcake" 	( .bashrc )
$ nvim .oh-my-bash/themes/cupcake/cupcake.theme.sh
```

## Enable Image Preview for Kitty and Ranger
```
$ sudo pacman -S w3m python-pillow
```
```
$ nvim .config/ranger/rc.conf

set preview_images true
set preivew_images_method kitty

```

## Enalb document view in nvim from ranger
```
$ nvim .bashrc

force_color_prompt=yes
export VISUAL=nvim;
export EDITOR=nvim;
```

# Python
```
$ sudo pacman -S python-pygame python-requests python-pandas python-beautifulsoup4 python-openpyxl
```

# Install Vim Plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# oh-my-bash
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

# Thunar trash
```
$ sudo pacman -S gvfs
```

# Time 
```
$ sudo pacman -S ntp
$ sudo systemctl enable ntpd
```

# Ranger
```
cp /usr/share/doc/ranger/config/rifle.conf .config/ranger/
cp /usr/share/doc/ranger/config/rc.conf .config/ranger/
$ sudo pacman -S bat mediainfo 

$ nvim .config/ranger/rc.conf
```
