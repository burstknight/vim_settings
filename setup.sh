sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install exuberant-ctags cscope
sudo apt install build-essential cmake python3-dev

cp .vimrc ~/

if [ -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
    echo "\e[32mThe plugin manager Vundle exists, so we don't download it.\e[0m"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
python3 ~/.vim/bundle/YouCompleteMe/install.py --clangd-completer

cp .ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/

cp -r ./templates/ ~/.vim
git config --global commit.template ~/.vim/templates

cd ~/.vim/bundle/markdown-preview.nvim/app
sh ./install.sh
