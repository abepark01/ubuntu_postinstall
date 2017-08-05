# install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo -e '\nexport PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
. ~/.bashrc

# install ruby-build for rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc
# install ruby 2.4.1
rbenv install 2.4.1
rbenv global 2.4.1
ruby -v

# update gems
gem update --system -f
gem update -f
gem cleanup
rbenv rehash
