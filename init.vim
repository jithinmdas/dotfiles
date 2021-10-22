" For Plug Installer use the below command
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"

set autoindent              " indent a new line the same amount as the line just typed
set cc=80                   " set an 80 column border for good coding style
set number                  " add line numbers
set shiftwidth=4            " width for autoindents
set tabstop=4               " number of columns occupied by a tab
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
filetype plugin on
" set spell                   " enable spell check

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'scrooloose/nerdtree'
	Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

" Colorscheme
colorscheme sublimemonokai

