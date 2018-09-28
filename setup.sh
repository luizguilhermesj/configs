!#/bin/sh

sudo apt-get -y install git vim zsh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/luizguilhermesj/configs.git ~/.configs

cp ~/.configs/vimrc ~/.vimrc
cp ~/.configs/zshrc ~/.zshrc

~/.configs/installPowerLineFonts.sh
chsh -s $(which zsh)
