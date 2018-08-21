let mapleader="\<Space>"

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'chrisbra/colorizer'
Plugin 'kien/ctrlp.vim'
Plugin 'yggdroot/indentline'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
Plugin 'dkprice/vim-easygrep'
Plugin 'isruslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-rails'
Plugin 'justinmk/vim-sneak'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ajh17/vimcompletesme'
Plugin 'posva/vim-vue'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on
syntax on
set nu
colorscheme gruvbox
"colorscheme monokai
set background=dark
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
let NERDTreeIgnore=['\.DS_Store$', '.swp']
let NERDTreeShowHidden=1
let g:vim_jsx_pretty_colorful_config = 1

map <Leader>n :NERDTreeToggle<CR>
map <Leader>i :IndentLinesToggle<CR>
map <Leader>c :w !pbcopy<CR>
map <Leader>x :x<CR>
nnoremap <Leader>m :set nonu!<CR>
nnoremap <Leader>s :w<CR>
map <Leader>q :q!<CR>

" clone paragraph
noremap cp yap<S-}>p
map <C-n> :NERDTreeToggle<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" allow for arrow key/mouse scroll text scooch
nnoremap <down> :m .+1<CR>==
nnoremap <up> :m .-2<CR>==
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv

