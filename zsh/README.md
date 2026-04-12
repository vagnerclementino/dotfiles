# Zsh

Configuração do [Zsh](https://www.zsh.org/) com [Oh My Zsh](https://ohmyz.sh/) e tema Agnoster.

## Arquivos

- `zshrc` — Configuração principal do Zsh

## Instalação

### Fedora

```bash
sudo dnf install zsh
chsh -s $(which zsh)
```

### Ubuntu / Debian

```bash
sudo apt install zsh
chsh -s $(which zsh)
```

### Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Configuração via Link Simbólico

```bash
ln -sf $(pwd)/zshrc ~/.zshrc
```

Reinicie o terminal ou execute `source ~/.zshrc` para aplicar.
