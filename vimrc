" this to avoid MyDiff() already loaded error when sourcing this file
"if !exists("g:vim_vimrc_loaded")
"	so c:/Program Files (x86)/Vim/_vimrc
"	set lines=50
"	set columns=120
"endif
"let g:vim_vimrc_loaded = 1
"unlet g:vim_vimrc_loaded 

set nocompatible " Vim > vi

" Pathogen plugin: loads all plugins in ~/.vim/bundle/
call pathogen#infect()
call pathogen#helptags()

set visualbell
set ttyfast
set encoding=utf-8
set fileencoding=
set fileformats=unix,dos,mac
"set guifont=Courier_New:h9
"set guifont=Consolas:h10 
set spelllang=en_us
"set spell " turn on spell checker
set backspace=indent,eol,start  " allow backspace in insert mode
"set noswapfile " turn swap files off
"set nobackup nowb " turn backups off
set directory=~/tmp/vim,. " swap file location
set backupdir=~/tmp/vim,. " ~ file location
set history=100
set laststatus=2 " always show status bar
set ruler
set number
set nowrap
set linebreak " wrap lines at convenient points
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
set splitbelow splitright
set ignorecase smartcase " case sensitivity for search
set hlsearch incsearch " search on the fly, highlight current match
set showmatch
set listchars=tab:\|\ ,trail:.,eol:◊,extends:►,precedes:◄
set list
set cursorline
set hidden

syntax on " syntax HLing on
filetype plugin on
filetype indent on
colorscheme sebburn

" toggle menu
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

