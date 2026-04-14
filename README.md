# Vagner's Dotfiles

Coleção pessoal de [dotfiles](https://wiki.archlinux.org/title/Dotfiles) — arquivos de configuração para sistemas UNIX/Linux com tema [Dracula](https://draculatheme.com/) e fonte [Hack Nerd Font](https://www.nerdfonts.com/). Cada diretório contém a configuração de um programa específico, pronta para ser aplicada via link simbólico.

## Estrutura

| Diretório | Descrição | Pacotes (Fedora) |
|-----------|-----------|------------------|
| [i3](i3/) | Window manager tiling (Dracula) | `i3 i3lock-color rofi feh picom xdotool jq scrot ImageMagick` |
| [i3status](i3status/) | Barra de status para i3wm | `i3status` |
| [polybar](polybar/) | Barra de status customizável (Dracula) | `polybar hack-fonts` |
| [rofi](rofi/) | Application launcher (Dracula) | `rofi` |
| [conky](conky/) | Monitor de sistema no desktop (Dracula) | `conky xdotool jq` |
| [picom](picom/) | Compositor (transparência) | `picom` |
| [alacritty](alacritty/) | Emulador de terminal (Dracula + transparência) | `alacritty` |
| [ranger](ranger/) | Gerenciador de arquivos no terminal | `ranger` |
| [neovim](neovim/) | Editor de texto Neovim (vim-bootstrap) | `neovim` |
| [vim](vim/) | Editor de texto Vim | `vim-enhanced` |
| [zsh](zsh/) | Shell Zsh com Oh My Zsh | `zsh` |
| [termite](termite/) | Emulador de terminal Termite | `termite` |
| [mpd](mpd/) | Music Player Daemon | `mpd` |
| [ncmpcpp](ncmpcpp/) | Cliente MPD no terminal | `ncmpcpp` |
| [misc](misc/) | Configurações diversas (Xresources) | `xorg-x11-server-utils` |

## Instalação Rápida

```bash
git clone https://github.com/vagnerclementino/dotfiles.git
cd dotfiles

# Instalar todos os pacotes necessários
make install

# Criar todos os links simbólicos
make link

# Validar links
make validate
```

## Instalação Individual

Cada módulo pode ser instalado separadamente:

```bash
# Instalar pacotes + criar links de um módulo específico
cd i3
make install
make link
make validate
```

## Targets Disponíveis

| Target | Descrição |
|--------|-----------|
| `make help` | Mostra ajuda |
| `make install` | Instala pacotes de todos os módulos (Fedora/Ubuntu/Debian) |
| `make link` | Cria links simbólicos de todos os módulos |
| `make validate` | Valida se os links estão corretos |

## Licença

[MIT License](LICENSE)
