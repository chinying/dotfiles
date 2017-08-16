set nocompatible " ignore vi compatabiity 
syntax on

" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line
set number

"tab/indentation settings
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab " tabs to spaces
set autoindent

"left at SoL, right at EoL
set whichwrap+=<,>,h,l,[,]

set termguicolors

" haven't had time to configure this yet
" set rtp+=/usr/local/opt/fzf

filetype off
filetype plugin on
filetype plugin indent on

set modelines=0

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'valloric/youcompleteme'

" auto startup nerdtree
" autocmd VimEnter * NERDTree
map <C-k> :NERDTreeToggle<CR>

call vundle#end()

let macvim_skip_colorscheme=1
colorscheme gruvbox
autocmd BufNewFile,BufReadPost *.ino,*.pde,*.cpp set filetype=cpp
autocmd BufNewFile,BufReadPost *.c set filetype=c
autocmd BufNewFile,BufReadPost *.py set filetype=python

autocmd Filetype markdown setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

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
"set wrap
"set textwidth=80
"set formatoptions=qrn1
set colorcolumn=80

" Code folding
set foldmethod=indent
set foldlevel=99

" Fold with spacebar
nnoremap <space> za
