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
    Plug 'gkjgh/cobalt'
    Plug 'mangeshrex/uwu.vim'
    Plug 'zivyangll/git-blame.vim'

call plug#end()

" Colorscheme
" colorscheme sublimemonokai
set background=light
colorscheme uwu
 
" Shortcuts
nmap <C-n> :NERDTree<CR>
nmap <C-f> :%!astyle --mode=c --style=ansi<CR>
nmap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nmap <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction
