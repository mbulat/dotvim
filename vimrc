" Mike's vimrc
"
set nocompatible                                                 " Must come first because it changes other options.
set modelines=0
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set guifont=Consolas\ for\ Powerline:h20

"Copy and paste from X clipboard -
com -range Cz :silent :<line1>,<line2>w !xsel -i -b
ca cz Cz

syntax enable
filetype plugin indent on                                        " Turn in filetype detection

" Remap the indent keys in visual mode to keep selected text
vmap > >gv
vmap < <gv

" increase scroll speed
"map <ScrollWheelUp> <C-Y>
"map <ScrollWheelUp> <C-U>
"map <ScrollWheelDown> <C-E>
"map <ScrollWheelDown> <C-D>

set showcmd                                                      " Display incomplete commands.
set showmode                                                     " Display the mode you're in.
set showmatch                                                    " Highlight matching brackets, etc.

set laststatus=2                " always have a status line
set cmdheight=1                 " number of lines for the command line
" set cursorline
set lazyredraw 
set ttyfast
set ttyscroll=3

set backspace=indent,eol,start                                   " Intuitive backspacing.

set wildmenu                                                     " Enhanced command line completion.
set wildmode=list:longest                                        " Complete files like a shell.
set wildignore+=*.o,*.obj,.bundle,coverage,.DS_Store,_html,.git,*.rbc,*.class,.svn,vendor/gems/*,vendor/rails/*   

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
set foldmethod=manual                                            " fast autocomplete
" set foldmethod=syntax                                            
set foldnestmax=10                                               " deepest fold is 10 levels
set nofoldenable                                                 " dont fold by default
set foldlevel=1

set title                                                        " Set the terminal's title

set nobackup                                                     " Don't make a backup before overwriting a file.
set nowritebackup                                                " And again.
set directory=$HOME/.vim/tmp//,.                                 " Keep swap files in one location

set shell=/bin/bash                                              " Some commands seem to have problems with zsh                    "

" auto complete select with enter
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
map ,v :e ~/.vim/vimrc<CR><C-W>_
map <silent> ,V :source ~/.vim/vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'" <CR>

" maps for lust exporer
map ,f <Leader>lf
map ,r <Leader>lr
map ,b <Leader>lb
map ,g <Leader>lg
map ,s :Sscratch<CR>

let g:rubycomplete_rails = 1
let g:LustyExplorerSuppressRubyWarning = 1

" set t_Co=256
nnoremap ,3 :NumbersToggle<CR>
let g:Powerline_symbols = 'fancy'

set ttymouse=xterm2
set mouse=a
