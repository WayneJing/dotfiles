#!/bin/sh
#install fzf
path=$(pwd)
cd ~
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#install rg
sudo apt-get install ripgrep -y

#install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim -y

#install node
sudo apt install npm -y
sudo npm config set registry http://registry.npm.taobao.org
sudo npm install npm@latest -g
sudo npm install n -g
sudo n lts

sudo snap install universal-ctags

cp -r $path/nvim $HOME/.config
mkdir -p $HOME/.local/share/nvim/
cp -r $path/site $HOME/.local/share/nvim/

nvim -c PlugInstall
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 200
echo open nvim and use the following cmd:
echo CocInstall coc-marketplace coc-format-json coc-actions coc-pyright coc-clangd coc-json 
