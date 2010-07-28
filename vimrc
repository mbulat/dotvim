" Mike's vimrc
set nocompatible
call pathogen#runtime_append_all_bundles()

set background=dark 
colorscheme vividchalk 

syntax on
set mouse=a
filetype plugin indent on

set autoindent
set smartindent

set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

set showmatch

set nowrap
set ruler
set number

map <S-Enter> O<ESC>
map <Enter> o<ESC>
imap jj <Esc>

map nn :NERDTreeToggle<CR>
map n :NERDTree<CR>

set laststatus=2
set statusline=%<%f\ %h%m%r%w%y%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
