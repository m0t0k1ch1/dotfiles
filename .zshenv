#==============================#
# path                         #
#==============================#

export GOPATH=$HOME/.ghq
export PGDATA=/usr/local/var/postgres

PATH=/usr/bin:/bin:/usr/sbin:/sbin

# homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# go
PATH=$GOPATH/bin:$PATH

# python
PATH=$HOME/.pyenv/shims:$PATH

# home
PATH=$HOME/bin:$PATH

export PATH



#==============================#
# color                        #
#==============================#

export CLICOLOR=1
export LSCOLORS=CxGxcxdxCxegedabagacad
