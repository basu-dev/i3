 for app in i3 rofi picom light acpi feh 
 do sudo pacman -Rns $app;
 done

 sudo rm -r ~/.config/i3


 echo "Other apps you might have installed while running i3 installation scripts are: "
 echo "brave , thunar , ttf-font-awesome , python-pip , grabc (from yay) arc-gtk-theme , sardi-icons xfce4-settings xfce4-terminal"
 echo "You can remove them if you dont want them?  " 

