sudo add-apt-repository -y ppa:saiarcot895/myppa
sudo apt-get update

sudo apt-get install -y axel
sudo apt-get install -y apt-fast
sudo apt-fast install -y git
sudo apt-fast install -y curl

#nerdtree
sudo apt-fast install -y vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
\" Pathogen
execute pathogen#infect()
call pathogen#helptags() \" generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on" >> ~/.vimrc

cd ~
