# i3 - Window Manager

Configuração do [i3wm](https://i3wm.org/) com tema [Dracula](https://draculatheme.com/), fontes Source Code Pro + Hack, e tela de bloqueio via i3lock-color.

## Arquivos

- `config` — Configuração principal do i3 (tema Dracula)
- `config.backup` — Backup da configuração anterior
- `lock.sh` — Script de lock screen com i3lock-color (tema Dracula)
- `touchpad_toggle.sh` — Script para ativar/desativar touchpad
- `urxvtc` / `urxvtd` — Scripts para terminal URxvt (cliente/daemon)
- `img/` — Imagens (wallpaper, lock screen)

## Instalação

### Fedora

```bash
sudo dnf install i3 rofi feh \
                 hack-fonts adobe-source-code-pro-fonts \
                 fontawesome-5-free-fonts fontawesome-5-brands-fonts

# i3lock-color (não está no repo oficial, usar COPR ou compilar)
sudo dnf copr enable sylvestre/i3lock-color
sudo dnf install i3lock-color
```

### Ubuntu / Debian

```bash
sudo apt install i3 rofi feh fonts-hack fonts-source-code-pro fonts-font-awesome
# i3lock-color: https://github.com/Raymo111/i3lock-color#building
```

## Configuração via Link Simbólico

```bash
make link
```

## Lock Screen

A tela de bloqueio usa [i3lock-color](https://github.com/Raymo111/i3lock-color) com tema Dracula:
- Relógio com hora e data (fontes Hack e Source Code Pro)
- Indicador de senha com cores Dracula (roxo, verde, vermelho)
- Atalho: `$mod+l`

## Atalhos Principais

- `$mod+Enter` — Abrir terminal (Alacritty)
- `$mod+space` — Rofi (launcher)
- `$mod+l` — Lock screen
- `$mod+Shift+q` — Fechar janela
- `$mod+Shift+r` — Recarregar i3
- `$mod+Shift+E` — Menu de sessão (logout, reboot, poweroff, suspend, hibernate)
