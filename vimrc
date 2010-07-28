" Mike's vimrc
call pathogen#runtime_append_all_bundles()

set background=dark 
colorscheme vividchalk 

syntax on
set mouse=a
set nocompatible
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set showmatch
set ruler
set number
map tt :NERDTreeToggle<CR>
map n :NERDTree<CR>

set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
