echo "Write your home directory for your user"
read $HOME
sudo pacman -S bspwm sxhkd lightdm polybar gnome-terminal firefox lightdm-gtk-greeter xorg
sudo mkdir $HOME/.config
sudo mkdir -p $HOME/.config/{bspwm,sxhkd,polybar}
sudo cp /usr/share/doc/bspwm/examples/bspwmrc $HOME/.config/bspwm/
sudo cp /usr/share/doc/bspwm/examples/sxhkdrc $HOME/.config/sxhkd/
sudo chmod u+x $HOME/.config/bspwm/bspwmrc
cd $HOME/.config/polybar
sudo cp $HOME/arch-colin/launch.sh ./
sudo chmod +x ~/.config/polybar/launch.sh
sudo echo "$HOME/.config/polybar/launch.sh" >> $HOME/.config/bspwm/bspwmrc
sudo cp /etc/polybar/config.ini $HOME/.config/polybar
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target
sudo systemctl enable lightdm --now
