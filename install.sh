#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")
install_vimrc()
{
	cp $SCRIPT_PATH/.vimrc ~/.vimrc
}
install_pathogen()
{
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}
install_dotvim()
{
	cp -ur $SCRIPT_PATH/.vimrc/* ~/.vim/
}
install_vim_colors_solarized()
{
	git clone http://github.com/altercation/vim-colors-solarized.git \
		~/.vim/bundle/vim-colors-solarized
}
install_vim()
{
	install_vimrc
	install_pathogen
	install_dotvim
	install_vim_colors_solarized
}
install_gitconfig_cisco()
{
	cp $SCRIPT_PATH/cisco/.gitconfig ~/.gitconfig
}

install_vim
install_gitconfig_cisco
