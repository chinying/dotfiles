set number
syntax on

"tab/indentation settings
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

"left at SoL, right at EoL
set whichwrap+=<,>,h,l,[,]

set rtp+=/usr/local/opt/fzf

filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#infect()
filetype plugin on
filetype plugin indent on
set nocompatible "at your own risk

set modelines=0
"execute pathogen#infect()
" colorscheme gruvbox 
set background=dark    " Setting dark mode

autocmd BufNewFile,BufReadPost *.ino,*.pde,*.cpp set filetype=cpp
autocmd BufNewFile,BufReadPost *.c set filetype=c
autocmd BufNewFile,BufReadPost *.py set filetype=python

inoremap jk <Esc> 
inoremap kj <Esc> 

"search + regex options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"makes backspace work in a sane manner
set backspace=indent,eol,start

set showmode
set showcmd
"set hidden
set wildmenu
set wildmode=list:longest

"screen flash on error
set visualbell
set cursorline

set ttyfast

"word wrap options
set wrap
set textwidth=80
"set formatoptions=qrn1
"set colorcolumn=85
