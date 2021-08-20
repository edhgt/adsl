# Install VirtualBox


```sh
sudo apt install build-essential linux-headers-amd64
cd ~/Downloads

# Download VirtualBox
wget https://download.virtualbox.org/virtualbox/6.1.26/VirtualBox-6.1.26-145957-Linux_amd64.run

sudo chmod u+x VirtualBox-6.1.26-145957-Linux_amd64.run

sudo ./VirtualBox-6.1.26-145957-Linux_amd64.run

vboxversion=$(wget -qO - https://download.virtualbox.org/virtualbox/LATEST.TXT)

wget "https://download.virtualbox.org/virtualbox/${vboxversion}/Oracle_VM_VirtualBox_Extension_Pack-${vboxversion}.vbox-extpack"

sudo vboxmanage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-6.1.26.vbox-extpack

sudo reboot
```