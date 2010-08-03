" Mike's vimrc
set nocompatible                                    " Must come first because it changes other options.
call pathogen#runtime_append_all_bundles()

set background=dark
colorscheme vividchalk
set mouse=a                                         " Allow mouse to interact with shell

syntax on                                           " Turn on syntax highlighting
filetype plugin indent on                           " Turn in filetype detection
set ofu=syntaxcomplete#Complete                     " Turn on Omnicomplettion
set completeopt=longest,menuone                     " Insert longest, and allways show popup on completion

set autoindent
set smartindent

" Remap the indent keys in visual mode to keep selected text
vmap > >gv
vmap < <gv

set showcmd                                         " Display incomplete commands.
set showmode                                        " Display the mode you're in.
set showmatch                                       " Highlight matching brackets, etc.

set backspace=indent,eol,start                      " Intuitive backspacing.

set wildmenu                                        " Enhanced command line completion.
set wildmode=list:longest                           " Complete files like a shell.

set ignorecase                                      " Case-insensitive searching.
set smartcase                                       " But case-sensitive if expression contains a capital letter.

set hidden                                          " Handle multiple buffers better.

set number                                          " Show line numbers.
set ruler                                           " Show cursor position.
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set incsearch                                       " Highlight matches as you type.
set hlsearch                                        " Highlight matches.

set wrap                                            " Turn on line wrapping.
set scrolloff=3                                     " Show 3 lines of context around the cursor.
set linebreak
set formatoptions=tq
set wrapmargin=4
set textwidth=120

set tabstop=2                                       " Global tab width.
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set softtabstop=2
set noexpandtab

set title                                           " Set the terminal's title

" set visualbell                                      " No beeping.

set nobackup                                        " Don't make a backup before overwriting a file.
set nowritebackup                                   " And again.
set directory=$HOME/.vim/tmp//,.                    " Keep swap files in one location

set shell=/bin/bash                                 " Some commands seem to have problems with zsh                "

set wildignore+=vendor,log,tmp,*.swp

" For the MakeGreen plugin and Ruby RSpec.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" Set the command to open for Rpreview
command -bar -nargs=1 OpenURL :!open <args>

" Get rid of awkward Ex-mode
map Q <Esc>

map <S-Enter> O<ESC>
map <Enter> o<ESC>

" Easy insert escape
imap jj <Esc>

" Easy insert escape and write file
imap kk <Esc>:w<CR>

map <Leader>n :NERDTree<CR>
map <Leader>nn :NERDTreeToggle<CR>

set laststatus=2
set statusline=%<%f\ %h%m%r%w%y%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

let g:rubycomplete_rails = 1
