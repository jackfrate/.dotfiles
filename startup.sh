#!/bin/bash
# wipe zshrc and point it to the one in this directory

touch ~/.zshrc
>~/.zshrc

echo "if [ -r ~/.dotfiles/.zshrc ]; then" >>~/.zshrc
echo "    source ~/.dotfiles/.zshrc" >>~/.zshrc
echo "fi" >>~/.zshrc

# create neovim symlink
ln -s ~/.dotfiles/nvim/ ~/.config/nvim

# RUN THIS LAST, because it needs to prompt for password
chsh -s $(which zsh)

git config --global --add --bool push.autoSetupRemote true

# add this on mac to normal zshrc if you're having problems
#export PATH=/opt/homebrew/bin:$PATH
# OR (if problems with homebrew zsh)
# sudo ln -s /opt/homebrew/bin/zsh /usr/local/bin/zsh

