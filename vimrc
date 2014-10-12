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
set backupdir=~/.vim/backup

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

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
set laststatus=2
