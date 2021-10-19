#!/bin/bash

echo ""
echo "========= Updating All Your Packages First ==========="
echo ""

sudo pacman -Syu --noconfirm

for app in i3blocks i3-gaps rofi picom ttf-font-awesome light acpi xwallpaper lxappearance xfce4-terminal ttf-ubuntu-font-family jq
do sudo pacman -S $app --noconfirm
done

function install (){
	echo "Install $1 ?";
	select yn in "Yes" "No"; do
		case $yn in 
			Yes ) sudo pacman -S $2 --noconfirm;break;;
			No ) break;
		esac
	done	
}
#run light command without sudo privillage
sudo chmod +s /usr/bin/light

for app in  brave firefox code thunar arc-gtk-theme sardi-icons yay
do install $app $app
done


echo "Install unzip,scrot sxiv mutt-wizard colorpicker unzip?"

installAdditional(){
	yay -S scrot sxiv mutt-wizard colorpicker unzip
}



select yn in "Yes" "No"; do
		case $yn in 
			Yes ) installAdditional;break;;
			No ) break;
		esac
	done	



# echo "Install Powerline Shell for colorful shell?"
 # select yn in "Yes" "No";do
	 # case $yn in
		 # Yes ) sudo pacman -S python-pip; pip install powerline-shell;break;;
		 # No ) break;
	# esac
# done
#
