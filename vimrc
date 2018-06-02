let mapleader="\<Space>"
execute pathogen#infect()
syntax on
filetype plugin indent on
set nu
colorscheme gruvbox
" colorscheme monokai
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set hidden
set title
set showmatch
let g:airline_theme='dark_minimal'
set undodir=~/.vim/undodir
set undofile
let NERDTreeIgnore=['\.DS_Store$']

map <C-n> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>i :IndentLinesToggle<CR>
map <Leader>m :set nonu<CR>
map <Leader>b :set nu<CR>
map <Leader>c :w !pbcopy<CR>
map <Leader>x :x<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap <down> :m .+1<CR>==
nnoremap <up> :m .-2<CR>==
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv
