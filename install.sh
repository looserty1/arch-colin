sudo pacman -S bspwm sxhkd lightdm polybar gnome-terminal firefox lightdm-gtk-greeter xorg
mkdir -p ~/.config/{bspwm,sxhkd,polybar}
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc
cd ~/.config/polybar
cp ~/arch-colin/launch.sh ./
chmod +x launch.sh
echo "$HOME/.config/polybar/launch.sh" >> ~/.config/bspwm/bspwmrc
cp /etc/polybar/config.ini ~/.config/polybar
systemctl enable lightdm
systemctl set-default graphical.target
systemctl enable lightdm --now
