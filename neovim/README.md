# Neovim Configuration

Configuração do Neovim baseada no [vim-bootstrap](https://vim-bootstrap.com/) com plugins gerenciados via vim-plug.

## Arquivos

### init.vim
Arquivo principal de configuração do Neovim gerado pelo vim-bootstrap. Contém:
- Configurações gerais do editor (números de linha, indentação, etc)
- Mapeamentos de teclas
- Configuração de plugins via vim-plug
- Temas e aparência
- Configurações específicas de linguagens

### rc.local
Configurações locais e personalizações específicas que sobrescrevem o init.vim.
Útil para configurações que não devem ser compartilhadas ou são específicas da máquina.
Carregado automaticamente pelo vim-bootstrap no final do init.vim.

### rc.local.bundles
Plugins adicionais que não estão no init.vim principal.
Permite adicionar plugins extras sem modificar o arquivo principal.
Carregado automaticamente pelo vim-bootstrap antes do `plug#end()`.

## Instalação

### Criar links simbólicos
```bash
make link
```

### Validar links
```bash
make validate
```

## Estrutura de Diretórios

Após criar os links simbólicos:
```
~/.config/nvim/
└── init.vim -> ~/code/clementino/dotfiles/neovim/init.vim

~/
├── .rc.local -> ~/code/clementino/dotfiles/neovim/rc.local
└── .rc.local.bundles -> ~/code/clementino/dotfiles/neovim/rc.local.bundles
```

## Plugins

Os plugins são gerenciados via [vim-plug](https://github.com/junegunn/vim-plug).

Para instalar os plugins após configurar:
```bash
nvim +PlugInstall +qall
```

## Atualização do init.vim

O arquivo `init.vim` é gerado pelo vim-bootstrap. Para atualizar:
1. Acesse https://vim-bootstrap.com/
2. Selecione as linguagens e opções desejadas
3. Baixe o arquivo `generate.vim`
4. Copie para `init.vim`: `cp ~/Downloads/generate.vim init.vim`

## Notas

- O diretório `plugged/` contém os plugins instalados e não deve ser versionado
- O diretório `autoload/` contém o vim-plug e não deve ser versionado
- O diretório `session/` contém sessões salvas e não deve ser versionado
- Os arquivos `rc.local` e `rc.local.bundles` seguem o padrão vim-bootstrap
