# Alacritty - Emulador de Terminal

Configuração do [Alacritty](https://alacritty.org/) com tema Dracula, transparência e fonte Hack Nerd Font.

## Arquivos

- `alacritty.toml` — Configuração principal (Dracula + 85% opacidade)

## Instalação

### Fedora

```bash
sudo dnf install alacritty
```

### Ubuntu / Debian

```bash
sudo apt install alacritty
```

## Configuração via Link Simbólico

```bash
make link
```

## Transparência

A opacidade está em `0.85` (85%). Para ajustar, edite `window.opacity` no `alacritty.toml`:
- `1.0` = sem transparência
- `0.85` = leve transparência (padrão)
- `0.7` = mais transparente
