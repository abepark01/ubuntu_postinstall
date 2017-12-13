# install nvm
NODE_VERSION=8.9.3
NVM_VERSION=v0.33.8
echo "installing nvm..."
curl -o- "https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh" | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install $NODE_VERSION
nvm alias default $NODE_VERSION

npm install -g npm tern typescript prettier gulp create-react-app
source ~/.bashrc
