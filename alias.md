# <<< FUNCIONES PERSONALIZADAS >>>
# <<< INICIO >>>

# Variable de ubicacion del script
alias pdw_local="cat ~/.pwd_local"
alias hola="cowsay -f dragon Wolaaaa | lolcat"

# Acceso directo para editar variables de entorno
alias EditVars="code DIRECCIONDESCRIPTS/alias.md"
alias editvars="EditVars"
alias Editvars="EditVars"
alias editVars="EditVars"
alias update="sh DIRECCIONDESCRIPTS/agregarAliasPersonalizados.sh;cz"

# Variables para YAY
alias yayUpd="yay -Syu"
alias yayRmv="yay -Rs"
alias yayCln="yay -Scc"
alias yayFin="yay -Ss"
alias yayGet="yay -S"
alias yayInf="yay -Qi"

# Variables Docker
alias dps="docker ps"
alias dlg="docker logs"
alias dex="docker exec"
alias dcl="docker system prune --all"

#Variables Docker Compose
alias comps="docker-compose ps"
alias comup="docker-compose up -d"
alias comdw="docker-compose down"
alias comrs="docker-compose restart"
alias comlg="docker-compose logs"

# Acceso directo al directorio Code
alias DCode="cd ~/Code/"
alias dCode="DCode"
alias dcode="DCode"
alias Dcode="DCode"
alias Dcode="DCode"

# Resumen de funciones
alias cz="clear; bash"
alias cl="clear"
alias l='ls'
alias ll='l -lhaS'

# Variables para Python
# Recortar python
alias py='python'
alias ipy='ipython'
alias pipUpd='py -m pip install --upgrade pip'

# Crear entorno virtual 
alias pyEnv="py -m venv env"
# Activar entorno virtual
alias avenv="source ./env/bin/activate"
# Desactivar entorno virtual
alias dvenv="deactivate"


alias USUARIO="echo "\"AmarelleDiArgento"\""
alias Email="ewige.quel@gmail.com"

# Variables para Git
# Recortar git
alias ginit="git init"
alias gstat="git status"
alias gpy='echo /env >> .gitignore; gadd; gcommit' 
alias gadd="git add ."
alias gcommit="git commit -am" 
alias gpull="git pull origin master"
alias gpush="git push origin master"
alias glog="git log --all --decorate --oneline --graph"
alias gAddUser="git config --global user.name AmarelleDiArgento"
alias gAddEmail= "git config --global user.email ewige.qual@gmail.com"

alias gkeys="ssh-keygen -t rsa -b 4096 -C ewige.qual@gmail.com"
alias gagent="eval $(ssh-agent -s)"
alias gssh="ssh-add ~/.ssh/id_rsa"
alias gVwKey="cat ~/.ssh/id_rsa.pub"

# Variables para TeamViwer
# Arrancar Daemon
alias twStart="systemctl start teamviewerd"
# Detener Daemon
alias twStop="systemctl stop teamviewerd"
# Habilitar uso de TeamViewer
alias twRun="systemctl enable teamviewerd"
# Dasactivar uso de TeamViewer
alias twBlock="systemctl disable teamviewerd"
# Status de TeamViewer
alias twStatus="systemctl status teamviewerd"
# Primer cargue de  TeamViewer
alias twInit="twStart; twRun; twStatus"


# <<< FIN >>>
# <<< FUNCIONES PERSONALIZADAS >>>