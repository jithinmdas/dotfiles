"----------------------------------------------------------------
"            _
"     _   __(_)___ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_)___/_/_/ /_/ /_/_/   \___/
"
"----------------------------------------------------------------
"  Version : 1.18.3
"  License : MIT
"  Author  : Jithin M Das
"  URL     : https://github.com/gerardbm/vimrc
"----------------------------------------------------------------
"  Index:
"   1. General settings
"   2. Plugins (Plug)
"   3. Plugins settings
"   4. User interface
"   5. Scheme and colors
"   6. Files and backup
"   7. Buffers management
"   8. Tabs management
"   9. Multiple windows
"  10. Indentation tabs
"  11. Moving around lines
"  12. Paste mode
"  13. Search, vimgrep and grep
"  14. Text edition
"  15. Make settings
"  16. Filetype settings
"  17. Helper functions
"----------------------------------------------------------------
"  Interface:
"  Normal mode
"    <F1> it's the default help.
"    <F2> renames the current buffer.
"    <F3> toggles line numbers.
"    <F4> toggles relative numbers.
"    <F5> reloads all open buffers.
"    <F6> toggles list.
"    <F7> opens the :terminal.
"    <F8> toggles spell checking.
"    <F9> toggles spell dictionaries.
"    <F10> toggles colorcolumn.
"    <F11> reloads the current colorscheme.
"    <F12> reloads your Vim/Neovim configuration.
"  Buffers:
"  Normal mode
"    <C-h> goes to the previous buffer.
"    <C-l> goes to the next buffer.
"    <Leader>bd closes the current buffer.
"    <Leader>s updates the buffer (save).
"    <Leader>S updates all the buffers.
"    <Leader>bb opens the :edit command.
"    <Leader>bg opens a list of all buffers.
"    <Leader>bw switches CWD to the current filepath.
"    <Leader>by copies the filepath to the clipboard.
"  Tabs:
"  Normal mode
"    <Leader>td closes the current tab.
"    <Leader>to closes all the tabs except the current.
"    <Leader>tt opens the :tabedit command.
"    <Leader>tr moves the tab position to the left.
"    <Leader>ty moves the tab position to the right.
"  Windows:
"  Normal mode
"    <M-h> goes to the window: left.
"    <M-j> goes to the window: down.
"    <M-k> goes to the window: up.
"    <M-l> goes to the window: right.
"    <C-f> toggles maximize/minimize the current window.
"    <Leader>. it is wincmd to easily manage windows.
"    <Leader>.- splits window horizontally.
"    <Leader>.. splits window vertically.
"    <Leader>.j closes the current window.
"    <Leader>.x closes the current window forcing it.
"    <Leader>., restores the proportional size of windows.
"    <Leader>.l returns to the last window.
"    <Leader>.p goes to the previous window.
"    <Leader>.n goes to the next window.
"    <Leader>.o closes all windows excepting the current.
"  Edition:
"  Normal mode
"    <C-j> moves lines down.
"    <C-k> moves lines up.
"    <C-a> increases a number value.
"    <C-x> decreases a number value.
"    <C-e> scrolls the window down [count].
"    <C-y> scrolls the window up [count].
"    <C-d> scrolls the window down 50%.
"    <C-u> scrolls the window up 50%.
"    <Leader>bf autoformat a buffer (sql, js, html, xml, css).
"    <Leader><BS> deletes the Windows ^M.
"    <Leader>o isolates the current line.
"    <Leader>f enters a new line down from 'Normal Mode'.
"    <Leader>F enters a new line up from 'Normal Mode'.
"    <Leader>ç suggests correctly spelled words.
"    <Leader>tf retabs the current buffer.
"    <Leader>wd removes trailing white spaces.
"    <Leader>p pastes text from the clipboard.
"    <Leader>coo sets the conceallevel to 0.
"    <Leader>coi sets the conceallevel to 2.
"    ç moves to the next misspelled word.
"    Ç moves to the previous misspelled word.
"    ñ toggles the cursor position: start of text/end of line.
"    cc toggles the commented code.
"    cx duplicates a line up.
"    cv duplicates a line down.
"    <Tab> adds one tabulator.
"    <S-Tab> deletes one tabulator.
"    <M-n> jumps to the next AutoPairs match.
"    <M-p> toggles AutoPairs plugin.
"  Visual mode
"    <Leader>y copies the selection into the clipboard.
"    <Leader>z toggles the case of the selection.
"    <Leader>tf retabs the current selection.
"    <C-q> expands neosnippet.
"    v expands the region selected.
"    <C-v> shrinks the selection.
"  Insert mode
"    <C-a> moves the cursor to the start of line (0).
"    <C-e> moves the cursor to the end of line ($).
"    <C-b> moves the cursor back one character.
"    <C-f> moves the cursor forward one character.
"    <C-h> deletes the last character.
"    <C-d> deletes the current character.
"    <C-u> deletes all characters before the cursor.
"    <C-j> enters a new line.
"    <C-k> enters a digraph.
"    <C-z> starts OMNI SQL Completion (only ft_sql).
"    <C-l> toggles the CapsLock key.
"    <C-q> expands neosnippet.
"    <C-x> ins-completion.
"    <C-n> keyword completion: next.
"    <C-p> keyword completion: previous.
"    ññ inserts [] faster.
"    ÑÑ inserts {} faster.
"    <M-n> jumps to the next AutoPairs match.
"    <M-p> toggles AutoPairs plugin.
"  Command mode
"    <C-a> moves the cursor to the start of line (0).
"    <C-e> moves the cursor to the end of line ($).
"    <C-b> moves the cursor back one character.
"    <C-f> moves the cursor forward one character.
"    <C-h> deletes the last character.
"    <C-d> deletes the current character.
"    <C-u> deletes all characters before the cursor.
"    <C-j> enters a new line.
"    <C-k> enters a digraph.
"    <C-z> pastes the yanked text (<C-r><C-w>).
"    <C-l> toggles the CapsLock key.
"    <C-n> navigates command history: next.
"    <C-p> navigates command history: previous.
"  Search:
"  Normal mode
"    <Space> searches forward for the pattern.
"    <Leader><Space> searches backward for the pattern.
"    <Leader><CR> highlights the word under the cursor.
"    <Leader>m disables highlight.
"  Visual mode
"    <Leader><CR> highlights the current selection.
"  Grep:
"  Normal mode
"    <Leader>vg vimgreps the highlight in the current buffer.
"    <Leader>vf vimgreps the highlight in the current directory.
"    <Leader>vv greps the highlight in the current buffer.
"    <Leader>vb greps the highlight in the loaded buffers.
"    <Leader>vn greps the highlight in the current directory.
"    <Leader>va greps the highlight in the current arglist.
"    <Leader>vm grepadds the highlight of the current buffer.
"    <Leader>n goes to the next vimgrep result.
"    <Leader>N goes to the previous vimgrep result.
"  Replace:
"  Normal mode
"    <Leader>r replaces the highlight in the current buffer.
"    <Leader>R replaces the highlight the loaded buffers.
"    <Leader>Q replaces the highlight to each valid quickfix entry.
"    <Leader>a opens files (*.*) of the current directory.
"    <Leader>A opens files (**/*.*) of the subdirectories.
"  Git:
"  Normal mode
"    <C-s> toggles the plugin fugitive :Gstatus.
"    <C-g> previews the current GitGutter hunk.
"    <C-z> opens a list of the last commits (GV)'.
"    <Leader>j goes to the next GitGutter hunk.
"    <Leader>k goes to the previous GitGutter hunk.
"    <Leader>gs adds the line to the staging area (GitGutter).
"    <Leader>gu undoes the hunk (GitGutter).
"    <Leader>gv starts the fugitive command :Gvdiff.
"    <Leader>gh starts the fugitive command :Gsdiff.
"    <Leader>gb starts the fugitive command :Gblame.
"    <Leader>gg searches a string between commits (Glog).
"  Errors:
"  Normal mode
"    <Leader>h goes to the previous warning/error.
"    <Leader>l goes to the next warning/error.
"    <Leader>q toggles the quickfix window.
"    <Leader>e toggles the location list window.
"  Tools:
"  Normal mode
"    <C-n> opens, focuses or closes NERDTree.
"    <C-p> opens the CtrlP menu buffers.
"    <C-q> display a list of sessions to open.
"    <C-t> opens, focuses or closes Tagbar.
"    <Leader>ii runs Python code into a tmux window.
"    <Leader>io runs Bash code into a tmux window.
"    <Leader>ih converts MD to HTML and previews it with Mupdf.
"    <Leader>ij converts MD to PDF and previews it with Mupdf.
"    <Leader>ik converts MD to EPUB and previews it with Mupdf.
"    <Leader><TAB> runs the code of the current buffer.
"    <Leader>B shows syntax highlighting groups.
"    <Leader>u toggles the plugin Undotree.
"    <Leader>W inits ArgWrap plugin.
"    <Leader>ww opens the personal vimwiki.
"    <Leader>we toggles the status of a vimwiki list item.
"    <Leader>gl opens the URL under the cursor in a web browser.
"    <Leader>ims runs the command :NotebookStart.
"    <Leader>imc runs the command :NotebookClose.
"    <Leader>imm runs the command :NotebookEvaluate.
"    gi inits the plugin EasyAlign.
"  Visual mode
"    <Leader>x inits tabularize plugin.
"    <Leader>X inits tabularize plugin (only the first match).
"  CtrlP plugin (customized)
"    <C-p> navigates history: previous (into CtrlP).
"    <C-n> navigates history: next (into CtrlP).
"    <C-h> toggles type (into CtrlP).
"    <C-l> toggles type (into CtrlP).
"    <C-b> moves cursor to the left (into CtrlP).
"    <C-f> moves cursor to the right (into CtrlP).
"    <C-s> deletes the last character.
"    <C-d> deletes the current character.
"    <C-u> deletes the entire line.
"    <C-g> runs the ToggleByFname function.
"  Terminal:
"  Terminal mode
"    <F7> returns to the last window (Neovim).
"    <F7>t returns to the last window (Vim).
"  Commands:
"  Command mode
"    :WW save the current buffer with sudo permissions.

"----------------------------------------------------------------
" 1. General settings
"----------------------------------------------------------------
" Disable vi compatibility
set nocompatible

" Reload .vimrc
nnoremap <F12> :so $MYVIMRC<CR>

" Lines of memory to remember
set history=10000

" Leader key to add extra key combinations
let mapleader = ','
let g:mapleader = ','

" Time delay on <Leader> key
set timeoutlen=3000 ttimeoutlen=100

" Update time
set updatetime=250

" Trigger InsertLeave autocmd
" inoremap <C-c> <Esc>

" No need for Ex mode
nnoremap Q <NOP>

" Open help in a vertical window
cnoreabbrev help vert help

" Terminal
"if has("terminal")
"	nnoremap <silent> <F7> :call <SID>ToggleTerminal()<CR>
"	set termkey=<F7>
"	set termsize=10x0
"endif

" Cscope database update
map <F1> :!cscope -Rb<CR>:cs reset<CR><CR>

" Set current file as logcat type
cnoreabbrev logcat set ft=logcat

" No wrapping of lines
" set nowrap

"----------------------------------------------------------------
" 2. Plugins (Plug)
"----------------------------------------------------------------
" List of plugins installed
call plug#begin('~/.vim/plugged')

	" Statusbar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Git tools
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/gv.vim'

	" Tools
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'majutsushi/tagbar'
	Plug 'valloric/listtoggle'

	" Color schemes
	Plug 'gerardbm/vim-atomic'
	Plug 'neutaaaaan/blaaark'
	Plug 'smallwat3r/vim-hashpunk-sw'
	Plug 'kamykn/skyknight'
	Plug 'srcery-colors/srcery-vim'
	Plug 'ErichDonGubler/vim-sublime-monokai'
	Plug 'neutaaaaan/monosvkem'
	Plug 'crusoexia/vim-monokai'

    " Misc
	Plug 'sheerun/vim-polyglot'
    Plug 'inkarkat/vim-mark'
    Plug 'inkarkat/vim-ingo-library'

	" Logcat
	Plug 'thinca/vim-logcat'

    " Table creation
    Plug 'godlygeek/tabular'
call plug#end()

"----------------------------------------------------------------
" 3. Plugins settings
"----------------------------------------------------------------
" --- Statusbar ---
" Airline settings
let g:airline_theme                       = 'atomic'
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
call airline#parts#define_accent('mode', 'black')

" --- Git tools ---
" Gitgutter settings
let g:gitgutter_max_signs             = 5000
let g:gitgutter_sign_added            = '+'
let g:gitgutter_sign_modified         = '»'
let g:gitgutter_sign_removed          = '_'
let g:gitgutter_sign_modified_removed = '»╌'
let g:gitgutter_map_keys              = 0
let g:gitgutter_diff_args             = '--ignore-space-at-eol'

nmap <Leader>j <Plug>(GitGutterNextHunkzz)
nmap <Leader>k <Plug>(GitGutterPrevHunkzz)
nnoremap <silent> <C-g> :call <SID>ToggleGGPrev()<CR>zz
nnoremap <Leader>gs :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <Leader>gf :GitGutterFold<CR>

" Fugitive settings
nnoremap <C-s> :Gstatus<CR>
nnoremap <Leader>gh :Gsdiff<CR>
nnoremap <Leader>gv :Gvdiff<CR>
nnoremap <Leader>gb :Gblame<CR>

" Searching for text added or removed by a commit
nnoremap <Leader>gg :call <SID>GrepWrapper('Glog', '-i -S', '--')<CR>

" GV settings
nnoremap <silent> <C-z> :call <SID>PreventGV()<CR>
vnoremap <silent> <C-z> :call <SID>PreventGV()<CR>

" --- Tools ---
" NERDCommenter settings
let g:NERDDefaultAlign          = 'left'

" NERDTree settings
nnoremap <silent> <C-n> :call <SID>ToggleNTree()<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tagbar toggle (custom function)
"nnoremap <silent> <C-t> :call <SID>ToggleTagbar()<CR>
let g:tagbar_autofocus        = 1
let g:tagbar_show_linenumbers = 2
let g:tagbar_sort             = 0

" Listtoggle settings
let g:lt_location_list_toggle_map = '<leader>e'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" CtrlP settings
let g:ctrlp_map               = '<C-p>'
let g:ctrlp_cmd               = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore     = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_show_hidden       = 1
let g:ctrlp_follow_symlinks   = 1
let g:ctrlp_prompt_mappings   = {
	\ 'PrtHistory(1)'        : ['<C-p>'],
	\ 'PrtHistory(-1)'       : ['<C-n>'],
	\ 'ToggleType(1)'        : ['<C-l>', '<C-up>'],
	\ 'ToggleType(-1)'       : ['<C-h>', '<C-down>'],
	\ 'PrtCurLeft()'         : ['<C-b>', '<Left>'],
	\ 'PrtCurRight()'        : ['<C-f>', '<Right>'],
	\ 'PrtBS()'              : ['<C-s>', '<BS>'],
	\ 'PrtDelete()'          : ['<C-d>', '<DEL>'],
	\ 'PrtDeleteWord()'      : ['<C-w>'],
	\ 'PrtClear()'           : ['<C-u>'],
	\ 'ToggleByFname()'      : ['<C-g>'],
	\ 'AcceptSelection("e")' : ['<C-m>', '<CR>'],
	\ 'AcceptSelection("h")' : ['<C-x>'],
	\ 'AcceptSelection("t")' : ['<C-t>'],
	\ 'AcceptSelection("v")' : ['<C-v>'],
	\ 'OpenMulti()'          : ['<C-o>'],
	\ }

" --- Misc ---
" Polyglot
let g:polyglot_disabled = ['markdown']

"----------------------------------------------------------------
" 4. User interface
"----------------------------------------------------------------
" Set X lines to the cursor when moving vertically
set scrolloff=0

" Always show mode
set showmode

" Show command keys pressed
set showcmd

" Enable the WiLd menu
set wildmenu

" Show the current position
set ruler

" Command bar height
set cmdheight=2

" Backspace works on Insert mode
set backspace=eol,start,indent

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" Terminal keycodes
if &term =~ 'screen'
	set <F1>=[11~
	set <F2>=[12~
	set <F3>=[13~
	set <F4>=[14~
	set <F5>=[15~
	set <F6>=[17~
	set <F7>=[18~
	set <F8>=[19~
	set <F9>=[20~
	set <F10>=[21~
	set <F11>=[23~
	set <F12>=[24~
	set <S-F1>=[11;2~
	set <S-F2>=[12;2~
	set <S-F3>=[13;2~
	set <S-F4>=[14;2~
	set <S-F5>=[15;2~
	set <S-F6>=[17;2~
	set <S-F7>=[18;2~
	set <S-F8>=[19;2~
	set <S-F9>=[20;2~
	set <S-F10>=[21;2~
	set <S-F11>=[23;2~
	set <S-F12>=[24;2~
endif

" Mouse
" set mouse=a

" Highlight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
set laststatus=2

" Change the cursor shape
if &term =~ 'screen'
	if exists('$TMUX')
		let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>[6 q\<Esc>\\"
		let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
		let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
	else
		let &t_SI = "\<Esc>[6 q"
		let &t_SR = "\<Esc>[4 q"
		let &t_EI = "\<Esc>[2 q"
	endif
endif

" Omni completion
if has('autocmd') && exists('+omnifunc')
autocmd Filetype *
	\ if &omnifunc == "" |
	\     setlocal omnifunc=syntaxcomplete#Complete |
	\ endif
endif

" Fix italics issue
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"----------------------------------------------------------------
" 5. Scheme and colors
"----------------------------------------------------------------
" True color
 if has("termguicolors")
     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
     set termguicolors
 endif

" Syntax highlighting
syntax enable

" Color scheme
syntax on
colorscheme sublimemonokai
" AtomicDarkBlueHard

" Reload the current colorscheme
nnoremap <F11> :call ReloadColorscheme()<CR>

" Show syntax highlighting groups
nnoremap <Leader>B :call <SID>SynStack()<CR>


"----------------------------------------------------------------
" 6. Files and backup
"----------------------------------------------------------------
" Disable swap files
set noswapfile

" No backup (use Git instead)
set nobackup

" Prevents automatic write backup
set nowritebackup

" Use UTF-8 as default encoding
set encoding=utf8

" Use Unix as the standard file type
set fileformats=unix,dos,mac

" Autoread a file when it is changed from the outside
set autoread

" Reload a file when it is changed from the outside
let g:f5msg = 'Buffer reloaded.'
nnoremap <F5> :e<CR>:echo g:f5msg<CR>

" Enable filetype plugins
filetype plugin on
filetype indent on

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

" Save the current buffer
nnoremap <Leader>s :update<CR>

" Save all buffers
nnoremap <Leader>S :bufdo update<CR>

" :W sudo saves the file
" (useful for handling the permission-denied error)
cnoremap WW w !sudo tee > /dev/null %

" Rename file
nnoremap <F2> :call RenameFile()<CR>

" Delete file
nnoremap <Leader><Del>y :call DeleteFile()<CR>

" Work on all file, p.e:
" - yaf (yank all file)
" - vaf (select all file)
onoremap af :<C-U>normal! ggVG<Esc><C-O><C-O>
onoremap aF :<C-U>normal! ggVG"+y<Esc><C-O><C-O>
vnoremap af :<C-U>normal! ggVG<Esc>

" Rename title of tmux tab with current filename
if exists('$TMUX')
	autocmd BufEnter * call system("tmux rename-window '" . expand("%:t") . "'")
	autocmd VimLeave * call system("tmux setw automatic-rename")
endif

"----------------------------------------------------------------
" 7. Buffers management
"----------------------------------------------------------------
" Buffer hidden when it is abandoned
set hidden

" Close the current buffer
nnoremap <C-b> :call <SID>OnlyCloseBuffer()<CR>

" Move between buffers
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

" Edit and explore buffers
nnoremap <Leader>bb :edit <C-R>=expand("%:p:h")<CR>/
nnoremap <Leader>bg :buffers<CR>:buffer<Space>

" Switch CWD to the directory of the current buffer
nnoremap <Leader>bw :lcd %:p:h<CR>:pwd<CR>

" Copy the filepath to clipboard
nnoremap <Leader>by :let @+=expand("%:p")<CR>

" Ignore case when autocompletes when browsing files
set fileignorecase

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set showtabline=2
catch
endtry

" Remember info about open buffers on close
" set viminfo^=%

"----------------------------------------------------------------
" 8. Tabs management
"----------------------------------------------------------------
" Create and close tabs
nnoremap <Leader>td :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>

" Open a new tab with the current buffer's path
" Useful when editing files in the same directory
nnoremap <Leader>tt :tabedit <C-R>=expand("%:p:h")<CR>/

" Move tabs position
nnoremap <Leader>tr :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <Leader>ty :execute 'silent! tabmove ' . tabpagenr()<CR>

""----------------------------------------------------------------
"" 9. Multiple windows
""----------------------------------------------------------------
"" Remap wincmd
"map <Leader>. <C-w>
"
"set winminheight=0
"set winminwidth=0
"set splitbelow
"set splitright
set fillchars+=stlnc:\/,vert:│,fold:―,diff:―
"
"" Split windows
"map <C-w>- :split<CR>
"map <C-w>. :vsplit<CR>
"map <C-w>j :close<CR>
"map <C-w>x :q!<CR>
"map <C-w>, <C-w>=
"
"" Resize windows
"if bufwinnr(1)
"	map + :resize +1<CR>
"	map - :resize -1<CR>
"	map < :vertical resize +1<CR>
"	map > :vertical resize -1<CR>
"endif
"
"" Toggle resize window
"nnoremap <silent> <C-f> :ToggleResize<CR>
"
"" Last, previous and next window; and only one window
"nnoremap <silent> <C-w>l :wincmd p<CR>:echo "Last window."<CR>
"nnoremap <silent> <C-w>p :wincmd w<CR>:echo "Previous window."<CR>
"nnoremap <silent> <C-w>n :wincmd W<CR>:echo "Next window."<CR>
"nnoremap <silent> <C-w>o :wincmd o<CR>:echo "Only one window."<CR>
"
"" Move between Vim windows and Tmux panes
"" - It requires the corresponding configuration into Tmux.
"" - Check it at my .tmux.conf from my dotfiles repository.
"" - URL: https://github.com/gerardbm/dotfiles/blob/master/tmux/.tmux.conf
"" - Plugin required: https://github.com/christoomey/vim-tmux-navigator
"set <M-h>=h
"set <M-j>=j
"set <M-k>=k
"set <M-l>=l
"
"nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
"nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
"nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
"nnoremap <silent> <M-l> :TmuxNavigateRight<CR>
"nnoremap <silent> <M-p> :TmuxNavigatePrevious<CR>
"
"" Remove the Windows ^M - when the encodings gets messed up
"noremap <Leader><BS> mmHmt:%s/<C-v><CR>//ge<CR>'tzt`m
"

"----------------------------------------------------------------
" 10. Indentation tabs
"----------------------------------------------------------------
" Enable autoindent & smartindent
set autoindent
set smartindent
set cindent
set cinoptions='(0'
" Use tabs, no spaces
set expandtab

" Be smart when using tabs
set smarttab

" Tab size (in spaces)
set shiftwidth=4
set tabstop=4
set softtabstop=4
set textwidth=80

" Remap indentation
nnoremap <TAB> >>
nnoremap <S-TAB> <<

vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

inoremap <TAB> <C-i>
inoremap <S-TAB> <C-d>

" Don't show tabs
set list

let g:f6msg = 'Toggle list.'
nnoremap <F6> :set list!<CR>:echo g:f6msg<CR>

" Show tabs and end-of-lines
set listchars=tab:│\ ,trail:·

"----------------------------------------------------------------
" 11. Moving around lines
"----------------------------------------------------------------
" Specify which commands wrap to another line
set whichwrap+=<,>,h,l

" Many jump commands move the cursor to the start of line
set nostartofline

" Wrap lines into the window
set wrap

" Don't break the words
" Only works if I set nolist (F6)
set linebreak
set showbreak=├——»

" Stop automatic wrapping
set textwidth=0

" Column at 80 width
set colorcolumn=80

" Listings don't pause
set nomore

" Color column
let g:f10msg = 'Toggle colorcolumn.'
nnoremap <silent> <F10> :call <SID>ToggleColorColumn()<CR>:echo g:f10msg<CR>

" Show line numbers
set number
set numberwidth=2

let g:f3msg = 'Toggle line numbers.'
nnoremap <silent> <F3> :set number!<CR>:echo g:f3msg<CR>

" Set relative line numbers
" set relativenumber

let g:f4msg = 'Toggle relative line numbers.'
nnoremap <silent> <F4> :set norelativenumber!<CR>:echo g:f4msg<CR>

" Treat long lines as break lines (useful when moving around in them)
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

vnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

nnoremap <Home> g^
nnoremap <End> g$

vnoremap <Home> g^
vnoremap <End> g$

" Toggle the cursor position start/end of the line
nnoremap <silent> ñ :call <SID>ToggleCPosition('')<CR>
vnoremap <silent> ñ <Esc>:call <SID>ToggleCPosition('normal! gv')<CR>

" Move lines
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <C-j> :m .+1<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv

" Duplicate a line
nnoremap cv yyP
nnoremap cx yyp

" Folding
set foldmethod=marker

" Return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" --- Readline commands ---
"----------------------------------------------------------------
" Move the cursor to the line start
inoremap <C-a> <C-O>0

" Move the cursor to the line end
inoremap <C-e> <C-O>$

" Moves the cursor back one character
inoremap <expr><C-b> deoplete#smart_close_popup()."\<Left>"

" Moves the cursor forward one character
inoremap <expr><C-f> deoplete#smart_close_popup()."\<Right>"

" Remove one character
inoremap <C-d> <DEL>

" Command Mode
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <DEL>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-z> <C-R><C-W>

"----------------------------------------------------------------
" 12. Paste mode
"----------------------------------------------------------------
" Bracketed paste mode
" - Source: https://ttssh2.osdn.jp/manual/en/usage/tips/vim.html
if has("patch-8.0.0238")
	if &term =~ "screen"
		let &t_BE = "\e[?2004h"
		let &t_BD = "\e[?2004l"
		exec "set t_PS=\e[200~"
		exec "set t_PE=\e[201~"
	endif
endif



"----------------------------------------------------------------
" 13. Search, vimgrep and grep
"----------------------------------------------------------------
" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Search, wrap around the end of the buffer
set wrapscan

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" For regular expressions turn magic on
set magic

" Maximum amount of memory in Kbyte used for pattern matching
set maxmempattern=1000

" --- Highlight ---
"----------------------------------------------------------------
" Map <Space> to / (search)
nnoremap <Space> /
nnoremap <Leader><Space> ?

" Highlight the word under the cursor and don't jump to next
nnoremap <silent> <Leader><CR> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hlsearch<CR>

" Highlight the selected text and don't jump to next
vnoremap <silent> <Leader><CR> :<C-U>call <SID>VSetSearch()<CR>:set hlsearch<CR>

" Disable highlight
"nnoremap <Leader>m :noh<CR>

" Search into a Visual selection
vnoremap <silent> <Space> :<C-U>call RangeSearch('/')<CR>
	\ :if strlen(g:srchstr) > 0
	\ \|exec '/'.g:srchstr\|endif<CR>n
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>
	\ :if strlen(g:srchstr) > 0
	\ \|exec '?'.g:srchstr\|endif<CR>N

" --- Vimgrep and grep ---
"----------------------------------------------------------------
" Vimgrep the highlight in the current file
nnoremap <Leader>vg :vimgrep /<C-R>//j %<CR>

" Vimgrep the highlight in the current directory and subdirectories
nnoremap <Leader>vf :vimgrep /<C-R>//j **/*.

autocmd QuickfixCmdPre grep,grepadd,vimgrep,vimgrepadd,helpgrep copen

" Grep settings
set grepprg=grep\ -nHi

" Current buffer
nnoremap <Leader>vv :call <SID>GrepWrapper('grep!', '', '%')<CR>

" All loaded buffers
nnoremap <Leader>vb :call setqflist([]) \|
			\ call <SID>GrepWrapper('bufdo grepadd!', '', '%')<CR>

" Current working directory
nnoremap <Leader>vn :call <SID>GrepWrapper('grep!', '-R --exclude-dir={.git,.svn} --exclude=LICENSE', '')<CR>

" Current buffer (grepadd)
nnoremap <Leader>vm :call <SID>GrepWrapper('grepadd!', '', '%')<CR>

" Current arglist
nnoremap <Leader>va :call <SID>GrepWrapper('grep!', '', '##')<CR>

" Navigate between vimgrep results
" nnoremap <Leader>n :cnext<CR>zz
nnoremap <Leader>N :cprev<CR>zz

" Jump to the results in buffers (first open window), not tabs
set switchbuf=useopen

" --- Replace ---
"----------------------------------------------------------------
" Replace the highlight in the current file
"nnoremap <Leader>r :%s/<C-R>///g<Left><Left>

" Replace the highlight in the visual selection
" Flag \%V --> Match only inside the visual selection
"vnoremap <Leader>r :s/\%V<C-R>/\%V//g<Left><Left>

" Replace the highlight to all loaded buffers and arglist
nnoremap <Leader>R :bufdo %s/<C-R>///ge<Left><Left><Left>

" Replace the highlight to each valid entry in the quickfix
nnoremap <Leader>Q :cdo %s/<C-R>///ge<Left><Left><Left>

" Populate the arglist
nnoremap <Leader>a :args *.
nnoremap <Leader>A :args **/*

"----------------------------------------------------------------
" 14. Text edition
"----------------------------------------------------------------
" Toggle case
nnoremap <Leader>z ~
vnoremap <Leader>z y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv
vnoremap ~ y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv

" Toggle and untoggle spell checking
let g:f8msg = 'Toggle spell checking.'
nnoremap <silent> <F8> :setlocal spell!<CR>:echo g:f8msg<CR>

" Toggle spell dictionary
nnoremap <silent> <F9> :call <SID>ToggleSpelllang()<CR>

" Move to next misspelled word
nnoremap ç ]s

" Find the misspelled word before the cursor
nnoremap Ç [s

" Suggest correctly spelled words
nnoremap <Leader>ç z=

" Copy text into the clipboard
vnoremap <Leader>y "+y<Esc>

" Paste text from the clipboard
nnoremap <Leader>p "+p

" Quickly select the text pasted from the clipboard
nnoremap gV `[v`]

" Yank everything from the cursor to the EOL
nnoremap Y y$

" Yank the last pasted text automatically
vnoremap p pgvy

" Retab the selected text
nnoremap <Leader>tf :retab!<CR>
vnoremap <Leader>tf :retab!<CR>

" Isolate the current line
nnoremap <Leader>o m`o<Esc>kO<Esc>``

" Enter a new line Down from 'Normal Mode'
nnoremap <Leader>f mao<Esc>`a

" Enter a new line Up from 'Normal Mode'
nnoremap <Leader>F maO<Esc>`a

" Insert brackets faster (not English layout)
inoremap ññ []<left>
inoremap çç {}<left>

"----------------------------------------------------------------
" 15. Make settings
"----------------------------------------------------------------
" Set makeprg
autocmd FileType sh setlocal makeprg=bash\ %

if !filereadable(expand('%:p:h').'/Makefile')
	autocmd FileType c setlocal makeprg=gcc\ %\ &&\ ./a.out
endif

" Go to the error line
set errorformat=%m\ in\ %f\ on\ line\ %l

" Execute ':make' and show the result
nnoremap <silent> <Leader><TAB> :<C-u>QuickRun<CR>
vnoremap <silent> <Leader><TAB> :QuickRun<CR>

" Run code into a tmux window
function! Tmuxy(opt) abort
	if exists('$TMUX')
		if a:opt ==# 'python'
			call system("tmux kill-window -t tmuxy")
			call system("tmux new-window -n tmuxy python3 " . expand("%:p"))
		endif
	else
		echo 'Tmux is not running.'
	endif
endfunction

augroup Tmuxy
	autocmd!
	autocmd FileType python nnoremap <Leader>ii :call Tmuxy('python')<CR>
augroup END

"----------------------------------------------------------------
" 16. Filetype settings
"----------------------------------------------------------------
" Delete trailing white space on save
func! DeleteTrailing()
	exe 'normal mz'
	%s/\s\+$//ge
	exe 'normal `z'
endfunc
autocmd BufWrite * :call DeleteTrailing() " All files

" Binary
augroup Binary
	autocmd!
	autocmd BufReadPre  *.bin let &bin=1
	autocmd BufReadPost *.bin if &bin | %!xxd
	autocmd BufReadPost *.bin set ft=xxd | endif
	autocmd BufWritePre *.bin if &bin | %!xxd -r
	autocmd BufWritePre *.bin endif
	autocmd BufWritePost *.bin if &bin | %!xxd
	autocmd BufWritePost *.bin set nomod | endif
augroup end

" Markdown
augroup markdown
	autocmd!
	autocmd FileType markdown setl spell
	nnoremap <silent> <Leader>ih :call <SID>Marky('.html')<CR>
	nnoremap <silent> <Leader>ij :call <SID>Marky('.pdf')<CR>
	nnoremap <silent> <Leader>ik :call <SID>Marky('.epub')<CR>
augroup end

let g:markdown_fenced_languages = [
	\ 'c',
	\ 'sh',
	\ 'go',
	\ 'perl',
	\ 'python',
	\ 'javascript',
	\ 'ruby',
	\ 'eruby',
	\ 'php',
	\ 'html',
	\ 'css',
	\ ]

" Mail
augroup mail
	autocmd!
	autocmd FileType mail setl spell
	autocmd FileType mail setl spelllang=ca
augroup end

" SQL (it requires sqlparse)
augroup sql
	let g:ftplugin_sql_omni_key = '<C-z>'
	autocmd FileType sql nnoremap <Leader>bf
				\ :%!sqlformat --reindent --keywords upper --identifiers upper -<CR>
	autocmd FileType sql vnoremap <Leader>bf
				\ :%!sqlformat --reindent --keywords upper --identifiers upper -<CR>
augroup end

" XML (it requires tidy)
augroup xml
	autocmd FileType xml nnoremap <Leader>bf
				\ :%!tidy -q -i -xml --show-errors 0 -wrap 0 --indent-spaces 4<CR>
augroup end

" New file headers
augroup headers
	autocmd!
	autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl>\#
				\ -*- coding: utf-8 -*-\<nl>\"|$
	autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl>\"|$
	autocmd BufNewFile *.pl 0put =\"#!/usr/bin/env perl\<nl>\"|$
	autocmd BufNewFile *.sh 0put =\"#!/usr/bin/env bash\<nl>\"|$
augroup end

"----------------------------------------------------------------
" 17. Helper functions
"----------------------------------------------------------------
" Toggle Terminal
function! s:ToggleTerminal()
	if bufexists('terminal')
		call win_gotoid(s:winZsh)
	else
		execute ':term++close zsh'
		keepalt file terminal
		let s:winZsh = win_getid()
	endif
endfunction

" Better toggle for NERDTree
function! s:ToggleNTree() abort
	if (exists ('t:NERDTreeBufName') && (bufwinnr(t:NERDTreeBufName) != -1))
		if &modifiable
			execute ':NERDTreeFocus'
		else
			execute ':NERDTreeClose'
		endif
	else
		execute ':NERDTreeFind'
	endif
endfunction

" Reload the current colorscheme
function! ReloadColorscheme()
	try
		exec ':colorscheme ' . g:colors_name
	catch /^Vim:E121/
		exec ':colorscheme default'
	endtry
endfunction

" Show syntax highlighting groups
function! <SID>SynStack()
	if !exists('*synstack')
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction

" Toggle GitGutterPreviewHunk
function! s:ToggleGGPrev()
	if getwinvar(winnr('#'), '&pvw') == 1
		pclose
		echo 'GitGutter closed.'
	else
		GitGutterPreviewHunk
		if getwinvar(winnr('#'), '&pvw') == 0
			echo 'Nothing to show.'
		else
			echo 'GitGutter preview.'
		endif
	endif
endfunction

" Execute GV only once
function! s:PreventGV() abort
	if &buftype !=# 'nofile'
		execute ':GV'
	endif
endfunction

" Get Tagbar buffer name
function! s:TagbarBufName() abort
	if !exists('t:tagbar_buf_name')
		let s:buffer_seqno += 1
		let t:tagbar_buf_name = '__Tagbar__.' . s:buffer_seqno
	endif
	return t:tagbar_buf_name
endfunction

" Better toggle for Tagbar
function! s:ToggleTagbar() abort
	let tagbarwinnr = bufwinnr(s:TagbarBufName())
	if tagbarwinnr != -1
		if &modifiable
			execute tagbarwinnr 'wincmd w'
		else
			execute ':TagbarClose'
		endif
	else
		execute ':TagbarOpen'
	endif
endfunction
