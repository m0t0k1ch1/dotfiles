#==============================#
# path                         #
#==============================#

export DOCKER_HOST=tcp://localhost:4243
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
# color                        #
#==============================#

export CLICOLOR=1
export LSCOLORS=CxGxcxdxCxegedabagacad
