set guifont=DroidSansMono\ Nerd\ Font\ 11
set relativenumber

" Normal mode in terminal.
tnoremap <Esc> <C-\><C-n>

" Enable mouse support in terminal
set mouse=a

" Always show cursor postion
set ruler

" Hide the buffer when abandoned
set hidden

" Keep some lines visible when scrolling
set scrolloff=3

" Maximum width of text that is being inserted
set textwidth=79

" Highlight past 80 columns
set colorcolumn=80
"
" Automatically load a file changed outside
set autoread

" Enable autoindent
set autoindent

" Fast edit .vimrc file
nmap <localleader>e :e! $MYVIMRC<cr>

" Change backup directory
set backupdir=~/.tmp

" Change the directory of swp files
set directory=~/.tmp

" Faster and improved grep using ag (The Silver Searcher)
if executable('ag')
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c:%m
endif

let g:winresizer_vert_resize=1
let g:winresizer_horiz_resize=1

let g:easyescape_chars = { "j": 2 }
let g:easyescape_timeout = 500
cnoremap jj <ESC>
