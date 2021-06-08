

















# <<< FUNCIONES PERSONALIZADAS >>>
# <<< INICIO >>>

# Acceso directo para editar variables de entorno
alias EditVars="code /home/freya/Plantillas/Scripts/alias.md"
alias editvars="EditVars"
alias Editvars="EditVars"
alias editVars="EditVars"
alias update="sh /home/freya/Plantillas/Scripts/agregarAliasPersonalizados.sh; cz"

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

# Crear entorno virtual 
alias pyEnv="py -m venv env"
# Activar entorno virtual
alias avenv="source ./env/bin/activate"
# Desactivar entorno virtual
alias dvenv="deactivate"

# Variables para Git
# Recortar git
alias gstat="git status"
alias gadd="git add ."
alias gcommit="git commit -am" 
alias gpull="git pull origin master"
alias gpush="git push origin master"
alias glog="git log --all --decorate --oneline --graph"

# <<< FIN >>>
# <<< FUNCIONES PERSONALIZADAS >>>