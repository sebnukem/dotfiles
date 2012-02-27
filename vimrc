set nocompatible " Vim > vi, this line must be 1st

" Pathogen plugin: loads all plugins in ~/.vim/bundle/
call pathogen#infect()
call pathogen#helptags()

colorscheme sebburn
"set guifont=Courier_New:h9
"set guifont=Consolas:h10 

set ttyfast
set visualbell
set encoding=utf-8
set fileencoding=
set fileformats=unix,dos,mac
set spelllang=en_us
"set spell " turn on spell checker
set backspace=indent,eol,start  " allow backspace in insert mode
set directory=~/tmp/vim,. " swap file location
set backupdir=~/tmp/vim,. " ~ file location
"set noswapfile " turn swap files off
"set nobackup nowb " turn backups off
set history=100
set hidden

set cursorline
set laststatus=2 " always show status bar
set ruler
set number
set nowrap
set linebreak " wrap lines at convenient points
set list
set listchars=tab:\|\ ,trail:.,eol:◊,extends:►,precedes:◄
set splitbelow splitright

set noexpandtab " keep tabs instead of spaces
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set sidescroll=1
set sidescrolloff=8 " start scrolling N columns away from border
set scrolloff=4 " start scrolling N lines away from border

set ignorecase smartcase " case sensitivity for search
set hlsearch incsearch " search on the fly, highlight current match
set showmatch

syntax on " syntax HLing on
filetype plugin on
filetype indent on

" ^F1 to toggle menu
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
set guioptions-=T " hide toolbar
" Tab to navigate the GUI tabs
nmap <tab> gt
nmap <S-tab> gT
" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" intuitive up and down moves
nnoremap j gj
nnoremap k gk

ab sn Sébastien Nicoud
ab hp Hewlett-Packard
