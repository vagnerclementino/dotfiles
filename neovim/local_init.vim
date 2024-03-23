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
    se\ grepformat=%f:%l:%c:%m
endif

let g:winresizer_vert_resize=1
let g:winresizer_horiz_resize=1

let g:easyescape_chars = { "j": 2 }
let g:easyescape_timeout = 500

cnoremap jj <ESC>
 
" enable AutoSave on Vim startup
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Vim airline
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' 
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

let g:go_rename_command = 'gopls'

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

set autowrite

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

let g:go_list_type = "quickfix"
autocmd FileType go nmap <leader>t  <Plug>(go-test)
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1

let g:rehash256 = 1
let g:molokai_original = 1

let g:coc_global_extensions = ['coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nmap <leader>rn <Plug>(coc-rename)

let g:nerdtree_tabs_open_on_gui_startup = 0

"" Close buffer
noremap <leader>c :bd!<CR>

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

" terminal emulation
nnoremap <silent> <leader>sh :FloatermToggle <CR>

let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"

let g:lastplace_ignore_buftype = "quickfix,nofile,help"

let NERDTreeShowHidden=1

let g:go_metalinter_command='golangci-lint'
let g:go_metalinter_autosave = 0
let g:go_metalinter_enabled = [ 
    \"asasalint",
    \"asciicheck",
    \"bidichk",
    \"bodyclose",
    \"containedctx",
    \"contextcheck",
    \"cyclop",
    \"decorder",
    \"depguard",
    \"dogsled",
    \"dupl",
    \"dupword",
    \"durationcheck",
    \"errcheck",
    \"errname",
    \"errorlint",
    \"execinquery",
    \"exhaustive",
    \"exportloopref",
    \"forbidigo",
    \"forcetypeassert",
    \"gci",
    \"gochecknoinits",
    \"gocognit",
    \"goconst",
    \"gocritic",
    \"gocyclo",
    \"godot",
    \"godox",
    \"goerr113",
    \"gofmt",
    \"goheader",
    \"goimports",
    \"gomnd",
    \"gomoddirectives",
    \"gomodguard",
    \"goprintffuncname",
    \"gosimple",
    \"govet",
    \"grouper",
    \"importas",
    \"ineffassign",
    \"interfacebloat",
    \"lll",
    \"loggercheck",
    \"maintidx",
    \"makezero",
    \"nakedret",
    \"nestif",
    \"nilerr",
    \"nilnil",
    \"nlreturn",
    \"noctx",
    \"nolintlint",
    \"nonamedreturns",
    \"nosprintfhostport",
    \"paralleltest",
    \"prealloc",
    \"predeclared",
    \"promlinter",
    \"reassign",
    \"revive",
    \"staticcheck",
    \"stylecheck",
    \"tenv",
    \"testableexamples",
    \"testpackage",
    \"thelper",
    \"tparallel",
    \"typecheck",
    \"unconvert",
    \"unparam",
    \"unused",
    \"usestdlibvars",
    \"varnamelen",
    \"whitespace",
    \"wrapcheck",
    \"wsl",
    \]


set spelllang=en,pt_br
set spellsuggest=best,9

" let g:go_debug = ['shell-commands']
let g:auto_save = 1  " enable AutoSave on Vim startup

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" complete text on the current line or in visual selection
nnoremap <leader>a :AI<CR>
xnoremap <leader>a :AI<CR>

" edit text with a custom prompt
xnoremap <leader>s :AIEdit fix grammar and spelling<CR>
nnoremap <leader>s :AIEdit fix grammar and spelling<CR>

" trigger chat
xnoremap <leader>c :AIChat<CR>
nnoremap <leader>c :AIChat<CR>

" redo last AI command
nnoremap <leader>r :AIRedo<CR>
