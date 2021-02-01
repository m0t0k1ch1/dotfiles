export PATH=$HOME/bin:$HOME/go/bin:/opt/homebrew/opt/mysql-client/bin:/opt/homebrew/bin:$PATH



PROMPT='%F{cyan}%B%n@%m%b%f > '

# ref. http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '%F{green}%b%f%F{white}:%f%F{cyan}%r%f'
zstyle ':vcs_info:*' actionformats '%F{green}%b%f%F{white}:%f%F{cyan}%r%f%F{white}|%f%F{red}%a%f'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'



# ref. http://zsh.sourceforge.net/Doc/Release/Options.html
HISTSIZE=10000
SAVEHIST=1000000
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

# ref. https://unix.stackexchange.com/questions/97843/how-can-i-search-history-with-text-already-entered-at-the-prompt-in-zsh
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end



eval "$(anyenv init -)"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



alias gb='git branch'
alias gc='git checkout'
alias gf='git fetch -p'
alias gs='git status'

alias gbdp='git branch | peco | xargs git branch -d'
alias gbDp='git branch | peco | xargs git branch -D'
alias gcp='git branch | peco | xargs git checkout'
alias gmp='git branch | peco | xargs git merge'

alias ll='exa -al'
alias rand='cat /dev/urandom | LC_CTYPE=C tr -dc "[:alnum:]" | head -c'



function cdg() {
    local current_dir=$PWD
    local dest_dir=$PWD
    while [ $dest_dir != '/' ]
    do
        for file in .git
        do
            if [ -e $dest_dir/$file ]; then
                echo $dest_dir
                cd $dest_dir
                return 0
            fi
        done
        dest_dir=`dirname $dest_dir`
    done
    echo "$current_dir is not included in the project managed by Git"
}

function select_command_by_peco() {
    BUFFER=$(history -n 1 | eval tail -r | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
}
zle -N select_command_by_peco
bindkey '^r' select_command_by_peco

function select_repo_by_peco() {
    local selected_dir=$(fd . $HOME/ghq --min-depth 3 --max-depth 3 | peco --query "$LBUFFER")
    if [ -n $selected_dir ]; then
        BUFFER="cd $selected_dir"
        zle accept-line
    fi
}
zle -N select_repo_by_peco
bindkey '^[' select_repo_by_peco
