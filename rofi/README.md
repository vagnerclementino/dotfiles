# Rofi - Application Launcher

Configuração do [Rofi](https://github.com/davatorium/rofi), um launcher de aplicações, com tema Dracula e fontes Hack + Source Code Pro.

## Arquivos

- `config.rasi` — Tema Dracula para o Rofi

## Instalação

### Fedora

```bash
sudo dnf install rofi
```

### Ubuntu / Debian

```bash
sudo apt install rofi
```

### Fontes necessárias

```bash
# Fedora
sudo dnf install google-noto-sans-fonts hack-fonts adobe-source-code-pro-fonts

# Ubuntu / Debian
sudo apt install fonts-hack fonts-source-code-pro
```

## Configuração via Link Simbólico

```bash
make link
```

## Uso

No i3, o Rofi está mapeado em `$mod+space`. Também pode ser executado diretamente:

```bash
rofi -show drun -show-icons
```
