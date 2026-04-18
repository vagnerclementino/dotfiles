# Conky - System Monitor

Configuração do [Conky](https://github.com/brndnmtthws/conky), monitor de sistema no desktop com tema Dracula e fonte Hack Nerd Font. Exibido como overlay transparente no canto superior direito.

## Arquivos

- `conkyrc` — Configuração principal (Dracula theme, transparente)

## Instalação

### Fedora

```bash
sudo dnf install conky
```

### Ubuntu / Debian

```bash
sudo apt install conky-all
```

## Configuração via Link Simbólico

```bash
make link
```

## Uso

O conky é iniciado automaticamente pelo i3. Também pode ser executado manualmente:

```bash
conky -c ~/.config/conky/conkyrc &
```
