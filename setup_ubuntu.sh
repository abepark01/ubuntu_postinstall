#!/bin/bash

# setup global nodejs
DIR=$PWD
cd $HOME
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh

# setup yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# setup sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# vim
sudo add-apt-repository ppa:pi-rho/dev -y

# golang
sudo add-apt-repository ppa:longsleep/golang-backports -y

# update apt packages
sudo apt-get update
sudo apt-get upgrade -y

# install ruby pre-requisites
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs python-dev cmake sublime-text yarn vim golang-go

# update global npm and install typescript and tern
sudo npm install -g npm typescript tern
cd $DIR

./setup_nvm.sh
./setup_ruby.sh
