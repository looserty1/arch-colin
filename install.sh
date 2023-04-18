sudo pacman -S bswpm sxhkd lightdm polybar
mkdir -p ~/.config/{bspwm,sxhkd,polybar}
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc
cd polybar
touch launch.sh
chmod +x launch.sh
