#!/bin/bash
echo "Creating /usr/share/beijaflore"
sudo mkdir -p /usr/share/beijaflore
echo "Ok"
echo "Moving background"
sudo cp background.jpg /usr/share/beijaflore/background.jpg
echo "Ok"
echo "Changing background"
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s /usr/share/beijaflore/background.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/beijaflore/background.jpg
echo "Ok"
echo "Changing locking screen"
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
echo "Ok"
echo "Changing Whisker menu"
sudo cp whiskermenu-1.rc ~/.config/xfce4/panel/whiskermenu-1.rc 
echo "Ok"
