# Navigation
alias ..="cd .."
alias ...="cd ../.."

# Safer file operations
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Better listing
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# Git shortcuts
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

# System info
alias df="df -h"
alias free="free -h"




# 🧰 Git commands

alias gs="git status"
alias gst="git status -sb"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcot="git checkout"
alias gchekout="git checkout"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gpo="git push origin"
alias gpl="git pull origin"
alias gd="git diff"
alias gclean="git reset --hard && git clean -df"
alias gundo="git reset --soft HEAD~1"
alias gchckout="git checkout"
alias gckout="git checkout"
alias go="git push -u origin"
alias gsh='git stash'
alias gw='git whatchanged'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nah="git clean -df && git checkout -- ."alias ...="cd ../.."

#Changing path
alias ....="cd ../../.."

alias .....="cd ../../../.."

alias ......="cd ../../../../.."

alias .1="cd .."

alias .2="cd ../.."

alias .3="cd ../../.."

alias .4="cd ../../../.."

alias .5="cd ../../../../.."

alias ..1="cd .."

alias ..2="cd ../.."

alias ..3="cd ../../.."

alias ..4="cd ../../../.."

alias ..5="cd ../../../../.."

alias cd..="cd .."

alias cd...="cd ../.."

alias cd....="cd ../../.."

alias cd.....="cd ../../../.."

alias cd......="cd ../../../../.."

alias cd1="cd .."

alias cd2="cd ../.."

alias cd3="cd ../../.."

alias cd4="cd ../../../.."

alias cd5="cd ../../../../.."

# Cool function: extract any archive easily
extract () {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz)  tar xzf "$1" ;;
            *.bz2)     bunzip2 "$1" ;;
            *.rar)     unrar x "$1" ;;
            *.gz)      gunzip "$1" ;;
            *.tar)     tar xf "$1" ;;
            *.zip)     unzip "$1" ;;
            *.7z)      7z x "$1" ;;
            *) echo "Cannot extract '$1'" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


# 🐳 Useful Docker functions

alias dl="sudo docker ps -l -q"

alias dps="sudo docker ps"

alias di="sudo docker images"

alias dip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

alias dkd="sudo docker run -d -P"

alias dki="sudo docker run -i -t -P"

alias dex="sudo docker exec -i -t"

alias dstop="docker stop $(docker ps -q)" # stop all

alias drm="docker rm $(docker ps -a -q)" # remove all containers

alias dclean="docker system prune -af" # clean system

alias dlog="docker logs -f" # follow logs


