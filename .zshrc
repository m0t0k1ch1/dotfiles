setopt prompt_subst
autoload -Uz vcs_info
PROMPT='%F{cyan}%B%n@%m%b%f > '
RPROMPT=$'$(show_vcs_info)'

zstyle ':vcs_info:*' formats '%F{green}%b%f%F{white}:%f%F{cyan}%r%f'
zstyle ':vcs_info:*' actionformats '%F{green}%b%f%F{white}:%f%F{cyan}%r%f%F{white}|%f%F{red}%a%f'
zstyle ':vcs_info:*' enable git

show_vcs_info() {
    vcs_info
    echo $vcs_info_msg_0_
}



eval "$(anyenv init -)"



alias gb='git branch'
alias gc='git checkout'
alias gf='git fetch -p'
alias gs='git status'

alias ll='exa -abghl'
alias rand='cat /dev/urandom | LC_CTYPE=C tr -dc "[:alnum:]" | head -c'
