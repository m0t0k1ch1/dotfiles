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
# development                  #
#==============================#

# plenv
eval "$(plenv init -)"

# rbenv
eval "$(rbenv init -)"



#==============================#
# alias                        #
#==============================#

# git
alias gb="git branch"
alias gbcp="git branch | peco | xargs git checkout"
alias gbdp="git branch | peco | xargs git branch -d"
alias gbDp="git branch | peco | xargs git branch -D"
alias gc="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log"
alias gs="git status"
alias gt="git tree"

# carton
alias carton="plenv exec carton"

# locate
alias locate_update="sudo /usr/libexec/locate.updatedb"

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

function gbc() {
    echo `git branch | grep $1 | tail -1 | xargs git checkout`
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
