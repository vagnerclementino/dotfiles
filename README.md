# Vagner's Dotfiles

Coleção pessoal de [dotfiles](https://wiki.archlinux.org/title/Dotfiles) — arquivos de configuração para sistemas UNIX/Linux. Cada diretório contém a configuração de um programa específico, pronta para ser aplicada via link simbólico.

## Estrutura

| Diretório | Descrição |
|-----------|-----------|
| [i3](i3/) | Window manager tiling i3wm |
| [i3status](i3status/) | Barra de status para i3wm |
| [polybar](polybar/) | Barra de status alternativa e customizável |
| [ranger](ranger/) | Gerenciador de arquivos no terminal |
| [neovim](neovim/) | Editor de texto Neovim (vim-bootstrap) |
| [vim](vim/) | Editor de texto Vim |
| [zsh](zsh/) | Shell Zsh com Oh My Zsh |
| [termite](termite/) | Emulador de terminal Termite |
| [mpd](mpd/) | Music Player Daemon |
| [ncmpcpp](ncmpcpp/) | Cliente MPD no terminal |
| [misc](misc/) | Configurações diversas (Xresources) |

## Instalação Rápida

```bash
git clone https://github.com/vagnerclementino/dotfiles.git
cd dotfiles
```

Cada subdiretório possui seu próprio `README.md` com instruções detalhadas de instalação de dependências e criação de links simbólicos.

## Método Geral

O padrão de instalação para todos os dotfiles é:

1. Instalar o pacote necessário via gerenciador de pacotes
2. Criar link simbólico do arquivo de configuração para o local esperado pelo programa
3. Recarregar ou reiniciar o programa

## Licença

[MIT License](LICENSE)
