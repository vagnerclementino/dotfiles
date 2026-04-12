# Ranger - Gerenciador de Arquivos no Terminal

Configuração do [Ranger](https://ranger.github.io/), um gerenciador de arquivos com interface no terminal e navegação estilo Vim.

## Arquivos

- `rc.conf` — Configuração principal (keybindings e opções)
- `rifle.conf` — Regras de abertura de arquivos
- `scope.sh` — Script de preview de arquivos
- `commands.py` — Comandos customizados
- `commands_full.py` — Referência completa de comandos
- `bookmarks` — Bookmarks de diretórios
- `tagged` — Arquivos marcados

## Instalação

### Fedora

```bash
sudo dnf install ranger
```

### Ubuntu / Debian

```bash
sudo apt install ranger
```

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/ranger
ln -sf $(pwd)/rc.conf ~/.config/ranger/rc.conf
ln -sf $(pwd)/rifle.conf ~/.config/ranger/rifle.conf
ln -sf $(pwd)/scope.sh ~/.config/ranger/scope.sh
ln -sf $(pwd)/commands.py ~/.config/ranger/commands.py
chmod +x ~/.config/ranger/scope.sh
```

Para evitar que o Ranger carregue a configuração padrão além da sua, defina:

```bash
export RANGER_LOAD_DEFAULT_RC=FALSE
```

## Uso

```bash
# Abrir ranger no diretório atual
ranger

# Abrir em diretório específico
ranger /caminho/do/diretorio
```

Atalhos principais:
- `h/j/k/l` — Navegação (esquerda/baixo/cima/direita)
- `Enter` — Abrir arquivo/diretório
- `q` — Sair
- `S` — Abrir shell no diretório atual
- `yy` — Copiar / `dd` — Recortar / `pp` — Colar
- `zh` — Mostrar arquivos ocultos
