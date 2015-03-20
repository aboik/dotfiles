#!/bin/sh

install_pathogen()
{
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}
install_vim_colors_solarized()
{
	git clone http://github.com/altercation/vim-colors-solarized.git \
		~/.vim/bundle/vim-colors-solarized
}
install_pathogen
install_vim_colors_solarized
