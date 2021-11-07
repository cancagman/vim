set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Window managemen & theme
Plugin 'itchyny/lightline.vim'
Plugin 'ryanoasis/vim-devicons'

" Integration
Plugin 'tpope/vim-fugitive'

" Navigation
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf.vim'

" Code
Plugin 'neoclide/coc.nvim'
Plugin 'rhysd/vim-clang-format'
Plugin 'octol/vim-cpp-enhanced-highlight'

" Debugging
Plugin 'puremourning/vimspector'

" Bookmarking
Plugin 'kshenoy/vim-signature'

call vundle#end()            " required
filetype plugin indent on    " required

""" General settings
set sessionoptions=blank,buffers,folds,help,resize,tabpages,winpos,winsize " Set session persistence options
set encoding=utf-8                                                         " Set UTF-8 encoding
set fileencoding=utf-8
set termencoding=utf-8
set nocompatible                                                           " Disable vi compatibility (emulation of old bugs)
set autoindent                                                             " Use indentation of previous line
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap                                                                  " Do not wrap lines
set noequalalways                                                           " Do not maintain window-size ratio
colorscheme yaflandia
syntax on                                                                   " Turn syntax highlighting on
set ignorecase
set smartcase
set incsearch
set hlsearch                                                                " Highlight all search results
set number                                                                  " Turn line numbers on
set showmatch                                                               " Highlight matching braces
set comments=sl:/*,mb:\ *,elx:\ */                                          " Intelligent comments
set wildmode=longest:full                                                   " Use intelligent file completion like in the bash
set wildmenu
set hidden                                                                  " Allow changing buffers without saving them
set backspace=2                                                             " Backspace tweaks
set backspace=indent,eol,start
set smarttab
let loaded_matchparen = 1
set listchars=tab:>-,trail:·
set list
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set laststatus=2

""" Plugin settings 
let mapleader=','
source ~/.vim/config/coc.vimrc
source ~/.vim/config/fzf.vimrc
source ~/.vim/config/lightline.vimrc
source ~/.vim/config/nerdtree.vimrc
source ~/.vim/config/vim-clang-format.vimrc
source ~/.vim/config/vimspector.vimrc
