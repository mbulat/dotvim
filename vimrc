" Mike's vimrc
"
set nocompatible                                                 " Must come first because it changes other options.
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set guifont=Consolas:h20

syntax on
filetype plugin indent on                                        " Turn in filetype detection

" Remap the indent keys in visual mode to keep selected text
vmap > >gv
vmap < <gv

set showcmd                                                      " Display incomplete commands.
set showmode                                                     " Display the mode you're in.
set showmatch                                                    " Highlight matching brackets, etc.

set backspace=indent,eol,start                                   " Intuitive backspacing.

set wildmenu                                                     " Enhanced command line completion.
set wildmode=list:longest                                        " Complete files like a shell.

set ignorecase                                                   " Case-insensitive searching.
set smartcase                                                    " But case-sensitive if expression contains a capital letter.

set hidden                                                       " Handle multiple buffers better.

set number                                                       " Show line numbers.
set ruler                                                        " Show cursor position.
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set incsearch                                                    " Highlight matches as you type.
set hlsearch                                                     " Highlight matches.
set history=10000

set scrolloff=3                                                  " Show 3 lines of context around the cursor.
set linebreak
set formatoptions=tq
set wrapmargin=4
set textwidth=120

set nowrap                                                       " Turn on line wrapping.

"tabs are evil.... we like spaces!!!
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" folding settings
set foldmethod=indent                                            " fold based on indent
set foldnestmax=10                                               " deepest fold is 10 levels
set nofoldenable                                                 " dont fold by default
set foldlevel=1

set title                                                        " Set the terminal's title

set nobackup                                                     " Don't make a backup before overwriting a file.
set nowritebackup                                                " And again.
set directory=$HOME/.vim/tmp//,.                                 " Keep swap files in one location

set shell=/bin/bash                                              " Some commands seem to have problems with zsh                    "

set wildignore+=vendor,log,tmp,*.swp

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

" ,v brings up my .vimrc
" ,V reloads it -- making all changes active (have to save first)
map ,v :sp ~/.vim/vimrc<CR><C-W>_
map <silent> ,V :source ~/.vim/vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'" <CR>

" maps for lust exporer
map ,f <Leader>lf
map ,r <Leader>lr
map ,b <Leader>lb
map ,g <Leader>lg

let g:rubycomplete_rails = 1
let g:LustyExplorerSuppressRubyWarning = 1

set t_Co=256
