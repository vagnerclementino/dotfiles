# ncmpcpp - Cliente MPD no Terminal

Configuração do [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp), um cliente MPD com interface no terminal.

## Arquivos

- `config` — Configuração principal
- `bindings` — Atalhos de teclado customizados

## Instalação

### Fedora

```bash
sudo dnf install ncmpcpp
```

### Ubuntu / Debian

```bash
sudo apt install ncmpcpp
```

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/ncmpcpp
ln -sf $(pwd)/config ~/.config/ncmpcpp/config
ln -sf $(pwd)/bindings ~/.config/ncmpcpp/bindings
```
