#!/bin/bash
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs python-dev cmake

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
. ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc

rbenv install 2.4.1
rbenv global 2.4.1
ruby -v
