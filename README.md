# bspwm-arch
## Step 1: active wifi from Network Manager
```
$ nmtui
$ sudo pacman -Syy
```
```
$ sudo pacman -S xf86-video-intel xf86-video-amdgpu xorg bspwm sxhkd rofi nitrogen feh picom kitty qutebrowser chroimum lxappearance arc-gtk-theme papirus-icon-theme vlc pcmanfm file-roller pavucontrol bash-completion xord-xdpyinfo ttf-font-awesome ttf-fira-code ttf-cascadia-code lightdm lightdm-gtk-greeter pacman-contrib xrandr bc maim xclip
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
$ yay -S polybar pamac-aur siji-git zoom betterlockscreen 
```
```
$ nvim .config/polybar/config
$ chmod +x .config/polybar/launch.sh
```
## Set up Betterlockscreen
```
$ betterlockscreen -u Pictures/arch.png -b 1.0
```
