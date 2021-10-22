source $HOME/.config/nvim/vim-plug/plugins.vim

set autoindent              " indent a new line the same amount as the line just typed
set cc=80                   " set an 80 column border for good coding style
set number                  " add line numbers
set shiftwidth=4            " width for autoindents
set tabstop=4               " number of columns occupied by a tab
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set cursorline              " highlight current cursorline
filetype plugin on
" set spell                   " enable spell check
set nocompatible            " disable compatibility to old-time vi

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'dracula/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

“ color schemes
 if (has(“termguicolors”))
 set termguicolors
 endif
 syntax enable
 “ colorscheme evening
colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow

