#!bin/bash

# set defalut editor as neovim
git config --global core.editor nvim
git clone https://github.com/jackfrate/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/vscode-nvim
