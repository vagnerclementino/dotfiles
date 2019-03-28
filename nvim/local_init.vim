"Show the line number relative to the line with the cursor.
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

"Map <Esc> to jj
imap jj <Esc>

"Map <Esc> to jk
imap jk <Esc>
"Disable viewdoc mapping
let g:no_viewdoc_maps = 1
