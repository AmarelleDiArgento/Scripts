#!/bin/bash
sudo nano /etc/pacman.conf 
sudo pacman-mirrors -g 
sudo pacman -S base-devel 
cd ~
HISTSIZE=100000
HISTCONTROL=ignoredups
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R freya:freya ./yay-git
cd yay-git
makepkg -si
cd ~
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
echo "empezando instalacion de paquetes"
yay -S papirus-dark-kde-git papirus-maia-icon-theme-git papirus-icon-theme-git visual-studio-code-bin intellij-idea-community-edition firefox-i18n-es-mx firefox-developer-edition-i18n-es-mx chromium latte-dock-git freerdp libvncserver remmina teamviewer openssh gimp docker docker-compose gnome-keyring android-studio ms-office-online-nativefier terraform typescript postman-bin audacity obs-studio shotcut gtk-update-icon-cache opera teams ipython-git lol-cat cowsay tree net-tools bzip2 wget zsh tilix
# paquetes no usados
# mongodb-bin spring-tool-suite 
# 

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
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "NVM Node 12"
nvm install 12

echo "NVM Node 14"
nvm install 14
echo "NVM Asignando default 14"
nvm alias default 14

echo "NVM 12 Paquetes angular 12 nodemon"
nvm use 12
npm i -g nodemon @angular/cli@9 @ionic/cli firebase-tools

echo "NVM 14 Paquetes"
nvm use 14
npm i -g nodemon @angular/cli @ionic/cli firebase-tools

# Color de carpetas gray :D 
# Datos: http://entornosgnulinux.com/2017/10/22/tip-xix-como-cambiar-el-color-de-las-carpetas-de-iconos-papirus-en-bunsenlabs/
sudo find /usr/share/icons/Papirus -type l -path '*/places/*' \( -ilname '*-blue-*' -o -ilname '*-blue.*' \) ! -iname '*-blue-*' ! -iname '*-blue.*' -exec bash -c 'echo "icon: $0"; link="$(readlink "$0")"; echo "link: $link"; newlink="${link/-blue/-gray}"; echo "newlink: $newlink"; sudo ln -sf "$newlink" "$0";echo' '{}' \;
sudo gtk-update-icon-cache /usr/share/icons/*

nano ~/.ssh/id_rsa.pub

mkdir ~/Code 
zsh --version
chsh -s $(which zsh)

echo "Capa de personalizacion de zsh con ohmyzsh"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sh agregarAliasPersonalizados.sh


echo "RECUERDA: agregar  ZSH_THEME=\"powerlevel10k/powerlevel10k\" en ~/.zshrc."