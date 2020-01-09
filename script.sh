#!/bin/bash
sudo nano sudo nano /etc/pacman.conf 
sudo pacman-mirrors -g
git clone https://aur.archlinux.org/yay.git
cd yay || makepkg -si || 
echo "empezando instalacion de paquetes"
yay -S papirus-dark-kde-git papirus-maia-icon-theme-git papirus-icon-theme-git libreoffice-fresh-es  papirus-libreoffice-theme-git visual-studio-code-bin intellij-idea-community-edition spring-tool-suite firefox-i18n-es-mx firefox-developer-edition-i18n-es-mx chromiun latte-dock-git freerdp libvncserver remmina teamviewer openssh anydesk gimp spotify mysql-workbench franz 

echo "Permisos de usuario Docker:"
sudo groupadd docker || sudo usermod -aG docker $USER
echo "Servicio de Docker:"
sudo systemctl enable docker || sudo systemctl start docker 
echo "Servicio de SSH:"
sudo systemctl enable sshd.service || sudo systemctl start sshd.service
echo "Servicio de TeamViewer:"
systemctl start teamviewerd || systemctl enable teamviewerd

echo "empezando instalacion NVM"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh || bash 

echo "NVM Node 10"
nvm install 10

echo "NVM Node 12"
nvm install 12
echo "NVM Asignando default 10"
nvm alias default 10 

echo "NVM 10 Paquetes angular 7, nodemon, pm2" 
nvm use 10 
npm install -g @angular/cli@7 || npm install -g nodemon || npm install -g pm2

echo "NVM 12 Paquetes angular 8, nodemon, pm2" 
nvm use 12 
npm install -g @angular/cli@latest || npm install -g nodemon || npm install -g pm2


