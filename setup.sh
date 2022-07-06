sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install exuberant-ctags cscope
sudo apt-get install build-essential cmake python3-dev
sudo apt-get install clangd-10
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt -y install nodejs
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-10 100

cp .vimrc ~/

if [ -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
    echo "\e[32mThe plugin manager Vundle exists, so we don't download it.\e[0m"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

cd ~/.vim/bundle/coc.nvim
sudo npm install -g yarn
git checkout release
yarn install
yarn build
cd -

cp -r ./templates/ ~/.vim
git config --global commit.template ~/.vim/templates/git_commit_template

cd ~/.vim/bundle/markdown-preview.nvim/app
sh ./install.sh
yarn
cd -
