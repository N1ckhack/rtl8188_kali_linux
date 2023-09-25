#!/bin/bash
echo 'Created by N1ck'
sudo apt install linux-headers-$(uname -r)
sudo echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
sudo git clone https://github.com/gglluukk/rtl8188eus.git
cd rtl8188eus
sudo make && sudo make install
echo 'Done!'
sudo reboot -i