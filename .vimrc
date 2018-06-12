set nocompatible
filetype off
" Turn on line numbering
set nu
" Enable syntax highlighting
syntax enable
" github.com/blushirts/darcula
colorscheme darcula
" Enable mouse scrolling
set mouse=a

" Set the runtime path to include vundle and initialize
" Begin plugin list
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'danro/rename.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on
" End plugin list, install using :PluginInstall

" lightline
" Fix for showing up on iTerm2
set laststatus=2

" NERDTree
" Open NERDTree by default
autocmd VimEnter * NERDTree
" Set cursor on editing window
autocmd VimEnter * wincmd p
" Exit vim if NERDTree is the last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
