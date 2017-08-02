if [ ! -d ~/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  echo -e 'BASE16_SHELL=$HOME/.config/base16-shell/' >> ~/.bashrc
  echo -e '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> ~/.bashrc
  echo -e 'base16_oceanicnext' >> ~/.bashrc
fi
