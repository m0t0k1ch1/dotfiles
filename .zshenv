#==============================#
# path                         #
#==============================#

export GOPATH=$HOME/.ghq

PATH=/usr/bin:/bin:/usr/sbin:/sbin

# homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# go
PATH=$GOPATH/bin:$PATH

# home
PATH=$HOME/bin:$PATH

export PATH



#==============================#
# editor                       #
#==============================#

export EDITOR=emacs
