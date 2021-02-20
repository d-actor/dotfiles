let mapleader="\<Space>"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Bundles
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'chrisbra/colorizer'
Plugin 'yggdroot/indentline'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
Plugin 'dkprice/vim-easygrep'
Plugin 'isruslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mxw/vim-jsx'
Plugin 'ajh17/vimcompletesme'
Plugin 'posva/vim-vue'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf'
Plugin 'stanangeloff/php.vim'
Plugin 'noahfrederick/vim-laravel'
Plugin 'tveskag/nvim-blame-line'
Plugin 'tpope/vim-surround'
Plugin 'djoshea/vim-autoread'
Plugin 'elixir-lang/vim-elixir'
Plugin 'bkad/CamelCaseMotion'
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
let g:vim_json_syntax_conceal=0
let g:airline_theme='dark_minimal'
set undodir=~/.vim/undodir
set undofile
let NERDTreeIgnore=['\.DS_Store$', '.swp']
let NERDTreeShowHidden=1
let g:vim_jsx_pretty_colorful_config = 1
let g:camelcasemotion_key = '<leader>'

" leader mappings
map <Leader>n :NERDTreeToggle<CR>
map <Leader>i :IndentLinesToggle<CR>
map <Leader>c :w !pbcopy<CR>
map <Leader>x :x<CR>
map <Leader>m :set nonu!<CR>
map <Leader>s :w<CR>
map <Leader>q :q!<CR>
map <Leader>p :FZF<CR>
map <Leader>f :%s /
map <Leader>k 25k<CR>
map <Leader>j 25j<CR>
map <Leader>b :ToggleBlameLine<CR>
map <Leader>h :set conceallevel=0<CR>

" other mappings
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

