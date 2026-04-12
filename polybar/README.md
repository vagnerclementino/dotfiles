# Polybar - Barra de Status

Configuração do [Polybar](https://github.com/polybar/polybar), uma barra de status altamente customizável para window managers.

## Arquivos

- `config` — Configuração principal do Polybar
- `config~` — Backup da configuração
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

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/polybar
ln -sf $(pwd)/config ~/.config/polybar/config
ln -sf $(pwd)/launch.sh ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/launch.sh
```

## Uso

Para iniciar manualmente:

```bash
~/.config/polybar/launch.sh
```

Para usar com i3, adicione ao config do i3:

```
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
```

E comente ou remova o bloco `bar {}` padrão do i3.

O script `launch.sh` detecta automaticamente os monitores conectados via `xrandr` e lança uma instância do Polybar para cada um.
