# Polybar - Barra de Status

Configuração do [Polybar](https://github.com/polybar/polybar) com tema [Dracula](https://draculatheme.com/), fontes Source Code Pro, Hack e Font Awesome 5.

## Arquivos

- `config` — Configuração principal do Polybar (tema Dracula)
- `config~` — Backup da configuração anterior
- `launch.sh` — Script de inicialização (detecta monitores automaticamente)

## Instalação

### Fedora

```bash
sudo dnf install polybar
```

### Ubuntu / Debian

```bash
sudo apt install polybar
```

## Fontes Necessárias

Os ícones da barra usam **Font Awesome 5**. Sem essas fontes os ícones não aparecem.

### Fedora

```bash
sudo dnf install fontawesome-5-free-fonts fontawesome-5-brands-fonts \
                 adobe-source-code-pro-fonts hack-fonts
```

### Ubuntu / Debian

```bash
sudo apt install fonts-font-awesome fonts-source-code-pro fonts-hack
```

### Instalação manual (alternativa)

Se os pacotes acima não incluírem Font Awesome 5:

```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip
unzip fontawesome-free-5.15.4-desktop.zip
cp fontawesome-free-5.15.4-desktop/otfs/*.otf .
rm -rf fontawesome-free-5.15.4-desktop fontawesome-free-5.15.4-desktop.zip
fc-cache -fv
```

### Verificar fontes instaladas

```bash
fc-list | grep -i "awesome"
fc-list | grep -i "source code pro"
fc-list | grep -i "hack"
```

## Configuração via Link Simbólico

```bash
make link
```

## Uso

Para iniciar manualmente:

```bash
~/.config/polybar/launch.sh
```

No i3, o Polybar é iniciado automaticamente via `exec_always` no config. O script `launch.sh` detecta os monitores conectados via `xrandr` e lança uma instância para cada um.
