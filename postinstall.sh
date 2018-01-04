#!/bin/sh
sudo xbps-install -Syu
sudo xbps-install -y elvish git xf86-input-libinput xf86-video-amd Adapta gnome xtools firefox geary micro cabal-install ghc
sudo ln -s /etc/sv/gdm /var/service
sudo sv down gdm
chsh -s /bin/elvish
sudo sh -c "echo 'HARDWARECLOCK=localtime' >> /etc/rc.conf"

mkdir ~/code
cd ~/code
git clone -b sc-controller-branch Vintodrimmer/void-packages/
cd void-packages
./xbps-src binary-bootstrap
./xbps-src pkg sc-controller
xi sc-controller

sudo reboot