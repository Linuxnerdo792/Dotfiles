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
