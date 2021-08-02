#!/bin/bash

repo_path=$(pwd)

#install zsh
sudo apt install zsh -y

#install ohmyzsh
cd ~
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp $repo_path/ys.zsh-theme ~/.oh-my-zsh/themes
#install zsh plugins
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git


#install fzf
cd ~
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#install fd-find
wget https://github.com/sharkdp/fd/releases/download/v8.2.1/fd_8.2.1_amd64.deb
sudo dpkg -i fd_*.deb

#install ccat
wget https://github.com/owenthereal/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
tar xvf linux*.tar.gz
sudo cp $(pwd)/linux-amd64*/ccat /usr/bin

#install sshpass
sudo apt install sshpass -y

#install rg
sudo apt-get install ripgrep -y

#install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim -y

#install node
sudo apt install npm -y
sudo npm install npm@latest -g
sudo npm install n -g
sudo n lts
#install universal-ctags
sudo snap install universal-ctags*.snap --dangerous

#deploy neovim
cp -rf $repo_path/nvim/ ~/.config
nvim -c PlugInstall
nvim -c CocInstall coc-marketplace
nvim -c CocInstall coc-git
nvim -c CocInstall coc-format-json
nvim -c CocInstall coc-clangd
nvim -c CocInstall coc-xml
nvim -c CocInstall coc-pyright
nvim -c CocInstall coc-json
nvim -c CocInstall coc-vimlsp
