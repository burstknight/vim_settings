which apt-get > /dev/null 2>&1
if [ $? -eq 0 ]; then
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get -y install git
	sudo apt-get -y install exuberant-ctags cscope
	sudo apt-get -y install build-essential cmake python3-dev
	sudo apt-get -y install clangd doxygen graphviz libstdc++-12-dev
	sudo apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates
	sudo curl -sL install-node.now.sh | sudo bash
	sudo apt-get -y install nodejs npm
	sudo npm install -g yarn
fi

which pacman > /dev/null 2>&1
if [ $? -eq 0 ]; then
	pacman -Sy --needed git cmake doxygen python-devel curl ${MINGW_PACKAGE_PREFIX}-nodejs ${MINGW_PACKAGE_PREFIX}-yarn ${MINGW_PACKAGE_PREFIX}-clang-tools-extra ${MINGW_PACKAGE_PREFIX}-gcc ctags cscope
fi

cp .vimrc ~/

if [ -f '~/.vim/autoload/plug.vim' ]; then
	echo "We have the plugin manager 'vim-plug'!"
else
	echo "Well, we need download the plugin manager: vim-plug"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall +qall

cp -r ./templates/ ~/.vim
git config --global commit.template ~/.vim/templates/git_commit_template

