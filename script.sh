#!/bin/bash
sudo nano /etc/pacman.conf
sudo pacman-mirrors -g
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
bash
yay -Syu
echo "empezando instalacion de paquetes"
yay -S papirus-dark-kde-git papirus-maia-icon-theme-git papirus-icon-theme-git visual-studio-code-bin intellij-idea-community-edition spring-tool-suite firefox-i18n-es-mx firefox-developer-edition-i18n-es-mx chromium latte-dock-git freerdp libvncserver remmina teamviewer openssh gimp docker docker-compose gnome-keyring android-studio postman ms-office-online-nativefier terraform typescrypt mongodb postman

echo "Permisos de usuario Docker:"
sudo groupadd docker | sudo usermod -aG docker $USER
echo "Servicio de Docker:"
sudo systemctl enable docker | sudo systemctl start docker
echo "Servicio de SSH:"
sudo systemctl enable sshd.service | sudo systemctl start sshd.service
echo "GIT registrar correo y usuario"
git config --global user.name "AmarelleDiArgento"
git config --global user.email "ewige.quel@gmail.com"

ssh-keygen -t rsa -b 4096 -C "ewige.qual@gmail.com"
echo "SSH registros :D"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "Servicio de TeamViewer:"
sudo systemctl enable teamviewerd.service | systemctl start teamviewerd.service

echo "empezando instalacion NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
bash

echo "NVM Node 12"
nvm install 12

echo "NVM Node 14"
nvm install 14
echo "NVM Asignando default 14"
nvm alias default 14

echo "NVM 12 Paquetes angular 12 nodemon"
nvm use 12
npm i -g nodemon @angular/cli@9 @ionic/cli firebase-tools

echo "NVM 12 Paquetes angular 14, nodemon, pm2"
nvm use 14
npm i -g nodemon @angular/cli @ionic/cli firebase-tools

nano ~/.ssh/id_rsa.pub
