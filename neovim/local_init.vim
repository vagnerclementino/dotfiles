set guifont=DroidSansMono\ Nerd\ Font\ 11
set relativenumber

" Ctrl-Space for completions. Heck Yeah!
" inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
"             \ "\<lt>C-n>" :
"             \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
"             \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
"             \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
" imap <C-@> <C-Space>

let g:airline_powerline_fonts = 1
let g:powerline_pycmd = 'py3'

" Figure out the system Python for Neovim.
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif

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

" GUI Options
if has('gui_running')
    if has('gui_gtk3')
        set guifont=Source\ Code\ Pro\ for\ Powerline\ 13
    endif
    set guioptions-=T "Disable toolbar
    set guioptions-=m "Disable menu bar
    set shell=/bin/zsh
endif

" Always show status line
set laststatus=2

" Enable omnicomplete
set completeopt=menu,menuone,preview "Show the menu when have only one complete option

" Map omnicomplete shortcut
inoremap <C-Space> <C-x><C-o>

" Create backup directory if not exists
if exists("*mkdir") && empty(glob('~/.tmp'))
    call mkdir($HOME . '/.tmp')
endif

" Change backup directory
set backupdir=~/.tmp

" Change the directory of swp files
set directory=~/.tmp

" Faster and improved grep using ag (The Silver Searcher)
if executable('ag')
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c:%m
endif
