#!/bin/bash

apt-get update -qq
apt-get install software-properties-common -y

# setup global nodejs
DIR=$PWD
cd $HOME
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
bash nodesource_setup.sh

# setup yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# python 3.6
add-apt-repository ppa:jonathonf/python-3.6 -y

# vim
add-apt-repository ppa:pi-rho/dev -y

# golang
add-apt-repository ppa:longsleep/golang-backports -y

# update apt packages
apt-get update -qq

# install ruby pre-requisites
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs python-dev cmake yarn vim python-pip python3.6 ack-grep

apt-get dist-upgrade -y
apt-get upgrade -y
apt-get autoclean
apt-get autoremove -y

# update global npm and install typescript and tern
if [ -n "$NVM_DIR" ]; then
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm use system
fi

npm install -g npm typescript tern prettier create-react-app
cd $DIR
