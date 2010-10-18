Installation
------------

	sudo aptitude install git-core
	git clone http://github.com/mbulat/dotvim.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	cd ~/.vim
	git submodule init
	git submodule update
	git submodule foreach git pull origin master
	sudo aptitude install exuberant-ctags
	
	
