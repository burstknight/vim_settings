sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install exuberant-ctags cscope
sudo apt install build-essential cmake python3-dev

cp .vimrc ~/
cp -r ./templates/ ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
python3 ~/.vim/bundle/YouCompleteMe/install.py --clangd-completer

cp .ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/

cd ~/.vim/bundle/markdown-preview.nvim/app
sh ./install.sh
