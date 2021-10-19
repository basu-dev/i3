# Some Useful Tips & Commands
### 1. Reverse Search

Reverse search ``Ctrl+r``<br>
for this append #something at end of command and you can
   search this later with reverse search
```
ipconfig | grep "hello" #myip
```
### 2. Getting word count
pipe with | wc -l to get line count
	|wc -w to word count and so on
```
cat basic.txt | wc -l
```
### 3. Table Format Output
    Use pipe | column -t for table format output
### Go To Previous Directory
```
cd - 
```
### 4. Run app in background even after closing terminal
```
nohup wget site.com/file.zip  
```
### 5. Run Last Command as Sudo
```
pacman -S chrome
##it needs sudo so.. just prepend sudo in beginning with:

sudo !!
   ```
### 6. Convert character cases:
```
cat my_file | tr a-z A-Z > output.txt
```
### 8. Multiple Commands if One fails
```
ipl.sh || echo "Ipl.sh could not run !!"
```
### 9. Run Window Manager without Display Managers like lightdm
Create ``~/.initrc`` file and write ``exec i3``
```
touch ~/.initrc
```
Inside ``~/.initrc``
```
exec i3
```
Now you can call ``startx`` from tty to directly boot into i3.
Inside tty
```
startx
```
Note.. You can replace i3 with anything like xfce4 , kde , awesome etc.
### 10. Create Wifi Hotspot
```
nmcli dev wifi hotspot wlp4s0 ssid hostspot_name password "your password"
```
> Replace wlp4s0 with your Network Interface

##  Other useful tips
1. ``sudo shutdown 00:00 or +15``

2. ``Ctrl+A`` to go to beginning of command &
   ``Ctrl+E`` to go to end in terminal
3. Put scripts path to ``.profile`` to make it executable from i3  rofi. i3 doesn't run environment from bashrc
    or something like that . I haven't understood it for now. I will be clear on this later on.

## For Arch Linux
### 1 Connect Android Phone to Arch Linux
```
yay -S jmtpfs
pacman -S mtpfs gvfs-mtp gvfs-gphoto2
```
<<<<<<< HEAD

# For Ubuntu Server On Virtualbox

Problem: Block Probing did not discover any disk.
Solution: Put both iso and .vdi file on Controller IDE and make Controller SATA empty
=======
# For Ubuntu Server on virtualbox

Problem: Block problem did not discover any discover
Solution: Place both .vdi and .iso on Controller IDE & leave Controller SATA empty.
>>>>>>> master
