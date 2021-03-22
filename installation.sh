#!/bin/bash
sudo pacman -Syu --noconfirm

for app in i3 i3blocks i3-gaps rofi picom ttf-font-awesome light lxappearance nitrogen python-pip acpi
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

for app in  brave code thunar arc-gtk-theme sardi-icons 

do install $app $app
done
echo "Install Powerline Shell for colorful shell?"
 select yn in "Yes" "No";do
	 case $yn in
		 Yes ) pip install powerline-shell;break;;
		 No ) break;
	esac
done

echo "Install Eye Dropper for picking color?"
 select yn in "Yes" "No";do
	 case $yn in
		 Yes ) yay -S grabc --noconfirm;break;;
		 No ) break;
	esac
done


