# i3 - Window Manager

Configuração do [i3wm](https://i3wm.org/), um window manager tiling para Linux.

## Arquivos

- `config` — Configuração principal do i3
- `config.backup` — Backup da configuração
- `touchpad_toggle.sh` — Script para ativar/desativar touchpad
- `urxvtc` / `urxvtd` — Scripts para terminal URxvt (cliente/daemon)
- `img/` — Imagens (wallpaper, lock screen)

## Instalação

### Fedora

```bash
sudo dnf install i3 i3lock dmenu rofi feh
```

### Ubuntu / Debian

```bash
sudo apt install i3 i3lock dmenu rofi feh
```

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/i3
ln -sf $(pwd)/config ~/.config/i3/config
ln -sf $(pwd)/touchpad_toggle.sh ~/.config/i3/touchpad_toggle.sh
```

## Uso

- Após instalar, selecione "i3" como sessão no gerenciador de login (GDM, LightDM, etc.)
- `$mod+Enter` — Abrir terminal
- `$mod+d` — Abrir launcher (dmenu/rofi)
- `$mod+Shift+q` — Fechar janela
- `$mod+Shift+r` — Recarregar configuração
- `$mod+Shift+e` — Sair do i3

Consulte o [guia do usuário do i3](https://i3wm.org/docs/userguide.html) para referência completa dos atalhos.
