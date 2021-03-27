# Arch Linux Installation

### 1.Update System Clock
```
timedatectl set-ntp true
```
### 2. Partition disk
```
lsblk
cfdisk /dev/sda
```
### 3. Format Partitions
```
mkfs.ext4 /dev/sda2
mkswap /dev/sda1
swapon /dev/sda1
```
### 4. Mount
```
mount /dev/sda2 /mnt
```
### 5. Install Base Packages
```
pacstrap /mnt base linux linux-firmware vim sudo
```
### 6.Configure file system
```
genfstab -U /mnt >> /mnt/etc/fstab
```

### 7. Change root to the new system
```
arch-chroot /mnt
```
### 8. Time Zone
```
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc
```
### 9. Localization
```
vim etc/locale.gen
```
Here uncomment en_US.UTF-8

### 10. Network Config
```
vim /etc/hostname
```
I am putting systemname as dev
```
dev
```
### 11. Add hosts
```
vim /etc/hosts
```
Here in stead of dev.localhost use what systemname you put before
```
127.0.0.1	localhost
::1		localhost
127.0.1.1	dev.localdomain	dev
```
### 12.Set root password
```
passwd
```
### 13. Create New User & assign sudo power
```
useradd -m -g wheel dev
passwd dev

 EDITOR=vim visudo
```
Here uncomment 
wheel ALL=(ALL) ALL

### 14. install grub and other packages
```
pacman -S grub networkmanager network-manager-applet dialog wireless_tools wpa_supplicant os-prober mtools dosfstools base-devel linux-headers
```
### 15. Install BootLoader (MBR)
```
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```
### 16. Exit and unmount & Reboot
```
exit
umount -a
reboot
```
### Now Login with root username and password

### 17. Activate Network
```
systemctl start NetworkManager
systemctl enable NetworkManager
```
### 18. Install Graphics

for intel:
```
pacman -S xf86-video-intel 
```
for amd:
```
pacman -S xf86-video-amdgpu
```
for nvidia install following packages
nvidia & nvidia-utils

### 19. Install Display Server
```
pacman -S xorg
```

### 20. Install Deskto Environment 
In this case I am installing my i3 from github
```
pacman -S git
cd ~/.config
git clone https://github.com/basu-dev/i3
cd i3
sh installation.sh
``

### 21. Install And Enable  DisplayManager
options: lxdm , lightdm, gddm etc
I am installing lightdm
```
pacman -S lightdm lightdm-webkit2-greeter

vim ~/.config/lightdm/lightdm.service
```
find and set  greeter-session=lightdm-webkit2-greeter

Now enable lightdm
```
systemctl enable --now  lightdm
```

## You are done now.
