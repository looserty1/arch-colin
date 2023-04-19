sudo pacman -S bspwm sxhkd lightdm polybar gnome-terminal firefox lightdm-gtk-greeter xorg
mkdir $HOME/.config
mkdir -p $HOME/.config/{bspwm,sxhkd,polybar}
cp /usr/share/doc/bspwm/examples/bspwmrc $HOME/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc $HOME/.config/sxhkd/
chmod u+x $HOME/.config/bspwm/bspwmrc
cd $HOME/.config/polybar
cp $HOME/arch-colin/launch.sh ./
chmod +x ~/.config/polybar/launch.sh
echo "$HOME/.config/polybar/launch.sh" >> $HOME/.config/bspwm/bspwmrc
cp /etc/polybar/config.ini $HOME/.config/polybar
systemctl enable lightdm
systemctl set-default graphical.target
systemctl enable lightdm --now
