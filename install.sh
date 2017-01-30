#!/bin/bash
sudo apt install -y git vim tmux
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh

cd /tmp/
git clone https://github.com/winardiaris/myconf.git
cd myconf
cp -ruv vim-colors/colors/ ~/.vim/
cp -ruv .vimrc ~/.vimrc
cp -ruv .tmux.conf ~/.tmux.conf


apt-vim install -y https://github.com/scrooloose/nerdtree.git
apt-vim install -y https://github.com/kien/ctrlp.vim.git
apt-vim install -y https://github.com/jiangmiao/auto-pairs.git
apt-vim install -y https://github.com/alvan/vim-closetag.git
apt-vim install -y https://github.com/Xuyuanp/nerdtree-git-plugin.git
apt-vim install -y https://github.com/vim-airline/vim-airline-themes.git
apt-vim install -y https://github.com/alvan/vim-closetag.git
apt-vim install -y https://github.com/ryanoasis/vim-devicons.git
apt-vim install -y https://github.com/rking/ag.vim.git
apt-vim install -y https://github.com/tpope/vim-commentary.git
apt-vim install -y https://github.com/jistr/vim-nerdtree-tabs.git
apt-vim install -y https://github.com/rakr/vim-one.git

cd ~/.vim/bundle
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
