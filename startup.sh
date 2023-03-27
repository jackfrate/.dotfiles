#!/bin/bash
# wipe zshrc and point it to the one in this directory  

touch ~/.zshrc
> ~/.zshrc

echo "if [ -r ~/.dotfiles/.zshrc ]; then" >> ~/.zshrc
echo "    source ~/.dotfiles/.zshrc" >> ~/.zshrc
echo "fi" >> ~/.zshrc

# create neovim symlink
ln -s ~/.dotfiles/nvim/ ~/.config/nvim


# RUN THIS LAST, because it needs to prompt for password
chsh -s $(which zsh)
