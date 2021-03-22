#!/bin/bash
#sudo pacman -Syu
function install (){
	echo "Install $1 ?";
	select yn in "Yes" "No"; do
		case $yn in 
			Yes ) sudo pacman -S $2;break;;
			No ) break;
		esac
	done	
}
for app in i3blocks i3-gaps brave code thunar rofi nitrogen picom ttf-font-awesome arc-gtk-theme sardi-icons light python-pip lxappearance

do install $app $app
done
echo "Install Powerline Shell for colorful shell?"
 select yn in "Yes" "No";do
	 case $yn in
		 Yes ) pip install powerline-shell;break;;
		 No ) break;
	esac
done

