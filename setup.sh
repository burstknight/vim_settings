sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install exuberant-ctags csope
sudo apt install build-essential cmake python3-dev

cp .vimrc ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
python3 ~/.vim/bundle/YouCompleteMe/install.py --clangd-completer

cp .ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/
