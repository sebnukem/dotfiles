set nocompatible " Vim > vi, this line must be 1st

" plugins:
"  Use Vim 8 native pludin system:
"  Plugins are installed (git clone) in the .vim/pack/seb/start/ folder.

set guifont=Inconsolata\ for\ Powerline:h15
"set guifont=Courier_New:h9
"set guifont=Consolas:h10 
"set gfn=Monospace\ 9

colorscheme sebburn
"colorscheme solarized
"set background=dark
"set background=light
" seoul256 (dark):
let g:seoul256_background = 235 " Range: 233 (darkest) ~ 239 (lightest)
"colo seoul

set ttyfast
set encoding=utf-8
set fileencoding=
"set fencs=ucs-bom,utf-16le,utf-8,default,latin1
set fileformats=unix,dos,mac
set spelllang=en_us
"set spell " turn on spell checker
set backspace=indent,eol,start  " allow backspace in insert mode
set directory=~/tmp/vim,. " swap file location
set backupdir=~/tmp/vim,. " ~ file location
set noswapfile " turn swap files off
"set nobackup nowb " turn backups off
set history=100
set hidden

set path+=** " :find command search in subdirs.
let g:netrw_banner=0 " help banner off
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open split to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_winsize=30 " open in 30% width view

set visualbell
set cursorline
set laststatus=2 " always show status bar
set noshowmode " turn off mode because airline status already does it
set showcmd
set ruler
set number
"set relativenumber
set nowrap
set linebreak " wrap lines at convenient points
set list
"set listchars=tab:\|\ ,trail:.,eol:░,extends:►,precedes:◄
set listchars=tab:\|\ ,trail:.,extends:►,precedes:◄,nbsp:␣
set showbreak=↳\ 
set splitbelow splitright

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab " keep tabs instead of spaces
set autoindent
set smartindent
set smarttab

set sidescroll=1
set sidescrolloff=8 " start scrolling N columns away from border
set scrolloff=8 " start scrolling N lines away from border

" Perl-like (Very magic) regexes
nnoremap / /\v
vnoremap / /\v
set ignorecase smartcase " case sensitivity for search
set hlsearch incsearch " search on the fly, highlight current match
set showmatch " show matching parens
set wildmenu
set wildmode=list:longest

syntax on " syntax HLing on
filetype plugin on
filetype indent on

set guioptions-=T " hide toolbar
" statusline = [buf] /path/file [+][RO][help][preview][type][unix] 0xFF 1-3, 49 / 99 50%
set statusline=[%n]\ %F%<\ %m%r%h%w%y[%{&ff}]%=0x%B\ @\ %c%V,\ %l\ /\ %L\ %P
" ^F1 to toggle menu
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>

let mapleader = ","

" Space to scroll page
nmap <space> <C-f>
nmap <S-space> <C-b>
" ^Tab to navigate the GUI tabs (as in Firefox)
nmap <C-tab> gt
nmap <C-S-tab> gT
" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" intuitive up and down moves
nnoremap j gj
nnoremap k gk
" disable arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
" strip trailing whites in current file
nmap <leader>w :%s/\s\+$//<cr>
" copy/paste to the OS clipboard with ,c and ,v
vmap <C-c> "+y
nmap <leader>c "+y
nmap <leader>v "+gP
" buffers
nnoremap <leader>b :ls<cr>:b<space>
" prevent jump to next instance when pressing * to search for word under
" cursor
nnoremap * *<C-o>
" format json, xml
nnoremap <leader>fj :%!python -m json.tool<cr>
nnoremap <leader>fx :%!xmllint --format -<cr>

" filetype-specific indentation overrides
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml,xml,html,css,javascript setlocal ts=2 sts=2 sw=2 noexpandtab

ab sn Sébastien Nicoud

" plugins

" NERDTree
" fix some weird shit with nerdtree printing ^G before each file
let g:NERDTreeNodeDelimiter = "\u00a0"

" vim-airline
"if has("gui_running")
  let g:airline_powerline_fonts = 1
"endif
let g:airline#extensions#branch#enabled = 1 " git branch in statusline
let g:airline#extensions#tabline#enabled = 1 " tabs
" this block is a fallback in case of missing powerline fonts
if !exists('g:airline_powerline_fonts')
let g:airline_symbols = {}
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
endif

" MRU plugin
map <leader>f :MRU<CR>
" location of most recently used file list (mru plugin)
let MRU_File = '/Users/snicoud/.vim_mru_files'

