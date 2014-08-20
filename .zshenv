#==============================#
# path                         #
#==============================#

export GOPATH=$HOME/go
export DOCKER_HOST=tcp://localhost:4243
export DYLD_LIBRARY_PATH=$HOME/.mysql/5.5.34/lib:$DYLD_LIBRARY_PATH

# homebrew
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

# heroku
PATH=/usr/local/heroku/bin:$PATH

# mysql
PATH=$HOME/.mysql/5.5.34/bin:$PATH

# plenv
PATH=$HOME/.plenv/shims:$PATH

# rbenv
PATH=$HOME/.rbenv/shims:$PATH

# go
PATH=$GOPATH/bin:$PATH

# private
PATH=$HOME/private/bin:$PATH

export PATH



#==============================#
# color                        #
#==============================#

export CLICOLOR=1
export LSCOLORS=CxGxcxdxCxegedabagacad
