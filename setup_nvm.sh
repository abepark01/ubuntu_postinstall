# install nvm
if [ ! -d ~/.nvm ];then
  echo "installing nvm..."
  cd $HOME
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
  . ~/.bashrc
  nvm install 8.2.1
  nvm alias default 8.2.1
fi

