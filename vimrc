" Install Vim-Plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

" Vim-Plug Commands
" PlugStatus
" PlugInstall
" PlugUpdate        " Plugins
" PlugUpgrade       " Vim-Plug
" PlugClean

" Vim
set number          " Show line numbers
set ignorecase      " Case insensitive matching
set expandtab       " Convert tabs to spaces
set smarttab        " Delete shiftwidth spaces at start of line
set shiftwidth=4    " Width of shift command
set tabstop=4       " Size of tabs
set wrap            " Wrap text
set background=dark " Dark background

syntax enable       " Syntax highlighting
colorscheme gruvbox 
