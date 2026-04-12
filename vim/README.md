# Vim

Configuração do [Vim](https://www.vim.org/).

## Arquivos

- `.vimrc` — Configuração principal
- `.vimrc.local` — Configurações locais
- `.vimrc.local.bundles` — Plugins adicionais
- `.viminfo` — Histórico do Vim

## Instalação

### Fedora

```bash
sudo dnf install vim-enhanced
```

### Ubuntu / Debian

```bash
sudo apt install vim
```

## Configuração via Link Simbólico

```bash
ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.vimrc.local ~/.vimrc.local
ln -sf $(pwd)/.vimrc.local.bundles ~/.vimrc.local.bundles
```
