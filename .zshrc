#==============================#
# prompt                       #
#==============================#

setopt prompt_subst
autoload -Uz vcs_info
PROMPT='%F{cyan}%n%f%F{yellow}★ %f%F{cyan}%m%f > '
RPROMPT=$'$(show_vcs_info)'

zstyle ':vcs_info:*' formats \
    '%F{green}%b%f%F{white}:%f%F{cyan}%r%f'
zstyle ':vcs_info:*' actionformats \
    '%F{green}%b%f%F{white}:%f%F{cyan}%r%f%F{white}|%f%F{red}%a%f'
zstyle ':vcs_info:*' enable git

show_vcs_info() {
    vcs_info
    echo $vcs_info_msg_0_
}



#==============================#
# compeletion                  #
#==============================#

# compinit
autoload -U compinit
compinit

# command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

# command history search
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)



#==============================#
# utility                      #
#==============================#

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# z
. `brew --prefix`/etc/profile.d/z.sh



#==============================#
# env initialization           #
#==============================#

# pyenv
eval "$(pyenv init - zsh)"

# plenv
eval "$(plenv init - zsh)"

# rbenv
eval "$(rbenv init - zsh)"



#==============================#
# alias                        #
#==============================#

# emacsclient
alias emacs='emacsclient -nw -a ""'

# docker
alias mysql='docker exec -it mysql mysql'

# git
alias gb="git branch"
alias gbdp="git branch | peco | xargs git branch -d"
alias gbDp="git branch | peco | xargs git branch -D"
alias gc="git checkout"
alias gcon="git diff --name-only --diff-filter=U"
alias gcp="git branch | peco | xargs git checkout"
alias gd="git diff"
alias gf="git fetch -p"
alias gl="git log"
alias gmp="git branch | peco | xargs git merge --no-ff"
alias gs="git status"

# carton
alias carton="plenv exec carton"

# locate
alias locate-update="sudo /usr/libexec/locate.updatedb"

# utility
alias ll="ls -al"



#==============================#
# function                     #
#==============================#

function zp() {
    dir=`z | peco | tr -s ' ' | cut -d' ' -f2`
    echo $dir
    cd $dir
}

function gisp() {
    url=`gis $@ | peco | cut -f2`
    open $url
}

function cdg() {
    current_dir=$PWD
    dir=$PWD
    while [ "$dir" != '/' ]
    do
        for file in .git
        do
            if [ -e $dir/$file ]; then
                echo "$dir"
                cd $dir
                return 0
            fi
        done
        dir=`dirname $dir`
    done
    echo "$current_dir is not included in the project managed by Git"
}

function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac";
    else
        tac="tail -r";
    fi
    BUFFER=$(history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

function peco-src () {
    local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src
