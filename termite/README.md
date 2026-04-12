# Termite - Emulador de Terminal

Configuração do [Termite](https://github.com/thestinger/termite), um emulador de terminal minimalista baseado em VTE.

## Arquivos

- `config` — Configuração principal (fonte, cores, scrollback)

## Instalação

### Fedora

```bash
sudo dnf install termite
```

### Ubuntu / Debian

Termite não está nos repositórios oficiais. Para instalar, compile a partir do fonte ou use um PPA:

```bash
# Compilação manual — consulte https://github.com/thestinger/termite
```

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/termite
ln -sf $(pwd)/config ~/.config/termite/config
```
