set nocompatible
filetype plugin indent on


execute pathogen#infect()

map <C-n> :NERDTreeToggle<CR>

set hidden

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif 

set autowrite

set backup
set backupdir=~/.vim/backup,.,~/

set directory=~/tmp,.,/tmp
set confirm

set viminfo='50,\"500 
set history=50

set incsearch
set ruler
set relativenumber
set number


set t_Co=256
set background=dark
colorscheme molokai
set cursorline
set showmode
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab

set smartindent
set nowrap

inoremap jj <ESC>
