#==============================#
# path                         #
#==============================#

export DOCKER_HOST=tcp://localhost:4243
export GOPATH=$HOME/go
export DYLD_LIBRARY_PATH=$HOME/.mysql/5.6.21/lib

PATH=/usr/bin:/bin:/usr/sbin:/sbin

# homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# go
PATH=$GOPATH/bin:$PATH

# heroku
PATH=/usr/local/heroku/bin:$PATH

# mysql
PATH=$HOME/.mysql/5.6.21/bin:$PATH

# mysql-build
PATH=$HOME/.mysql/mysql-build/bin:$PATH

# plenv
PATH=$HOME/.plenv/shims:$PATH

# rbenv
PATH=$HOME/.rbenv/shims:$PATH

# private
PATH=$HOME/private/bin:$PATH

export PATH



#==============================#
# color                        #
#==============================#

export CLICOLOR=1
export LSCOLORS=CxGxcxdxCxegedabagacad
