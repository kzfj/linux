""""""基本设置""""""
let mapleader=" "
set number    
syntax on
set norelativenumber
map R :source $MYVIMRC<CR>
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j

noremap J 10j
noremap K 10k
noremap H 5h 
noremap L 5l

vnoremap Y "+y


""""""插件""""""
call plug#begin('~/.config/nvim/plugged')

"airline"
Plug 'vim-airline/vim-airline'

"snazzy"
Plug 'connorholyday/vim-snazzy'

"you compldte me"
"Plug 'Valloric/YouCompleteMe'

"nerd tree"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"ale"
Plug 'w0rp/ale'

call plug#end()



""""""插件设置""""""

"snazzy"
let g:SnazzyTransparent = 1
color snazzy

"nerd tree"
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

"You Complete ME"
"nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap g/ :YcmCompleter GetDoc<CR>
"nnoremap gt :YcmCompleter GetType<CR>
"nnoremap gr :YcmCompleter GoToReferences<CR>
"let g:ycm_autoclose_preview_window_after_completion=0
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_use_clangd = 0
"let g:ycm_python_interpreter_path = "/bin/python3"
"let g:ycm_python_binary_path = "/bin/python3"

"ale"
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']








