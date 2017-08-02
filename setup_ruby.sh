# install rbenv
cd $HOME
if [ ! -d ~/.rbenv ];then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo -e '\nexport PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  . ~/.bashrc
fi

# install ruby-build for rbenv
if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  . ~/.bashrc
  # install ruby 2.4.1
  rbenv install 2.4.1
  rbenv global 2.4.1
  ruby -v
fi

# update gems
gem update --system
gem update
rbenv rehash

