" For Plug Installer use the below command
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"

set autoindent              " indent a new line the same amount as the line just typed
set cc=80                   " set an 80 column border for good coding style
set number                  " add line numbers
set shiftwidth=4            " width for autoindents
set tabstop=4               " number of columns occupied by a tab
set expandtab				" replaces tabs with spaces
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

" Shortcuts
nmap <C-n> :NERDTree<CR>
nmap <C-f> :%!astyle --mode=c --style=ansi<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

