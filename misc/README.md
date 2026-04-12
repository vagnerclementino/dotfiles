# Misc - Configurações Diversas

Configurações avulsas que não se encaixam em um diretório específico.

## Arquivos

- `Xresources` — Configuração de recursos X11 (cores, fontes para terminais)

## Instalação

### Fedora

```bash
sudo dnf install xorg-x11-server-utils
```

### Ubuntu / Debian

```bash
sudo apt install x11-xserver-utils
```

## Configuração via Link Simbólico

```bash
ln -sf $(pwd)/Xresources ~/.Xresources
xrdb ~/.Xresources
```
