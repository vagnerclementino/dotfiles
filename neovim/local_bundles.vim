Plug 'powerman/vim-plugin-viewdoc'
Plug 'ryanoasis/vim-devicons'
Plug 'powerline/powerline'
Plug 'simeji/winresizer'
Plug 'zhou13/vim-easyescape'
Plug 'nikvdp/neomux'
Plug '907th/vim-auto-save'
Plug 'ycm-core/YouCompleteMe'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

