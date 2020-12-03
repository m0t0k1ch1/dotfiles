PROMPT='%F{cyan}%B%n@%m%b%f > '

# ref. http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '%F{green}%b%f%F{white}:%f%F{cyan}%r%f'
zstyle ':vcs_info:*' actionformats '%F{green}%b%f%F{white}:%f%F{cyan}%r%f%F{white}|%f%F{red}%a%f'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'



# ref. https://unix.stackexchange.com/questions/97843/how-can-i-search-history-with-text-already-entered-at-the-prompt-in-zsh
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end



eval "$(anyenv init -)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi



alias gb='git branch'
alias gc='git checkout'
alias gf='git fetch -p'
alias gs='git status'

alias ll='ls -aGhl'
alias rand='cat /dev/urandom | LC_CTYPE=C tr -dc "[:alnum:]" | head -c'
