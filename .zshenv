#==============================#
# path                         #
#==============================#

export DOCKER_HOST=tcp://localhost:4243
export GOPATH=$HOME/go

PATH=/usr/bin:/bin:/usr/sbin:/sbin

# homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# plenv
PATH=$HOME/.plenv/shims:$PATH

# rbenv
PATH=$HOME/.rbenv/shims:$PATH

# composer
PATH=$HOME/.composer/vendor/bin:$PATH

# go
PATH=$GOPATH/bin:$PATH

export PATH



#==============================#
# color                        #
#==============================#

export CLICOLOR=1
export LSCOLORS=CxGxcxdxCxegedabagacad
