# i3status - Barra de Status para i3

Configuração do [i3status](https://i3wm.org/i3status/manpage.html), a barra de status padrão do i3wm.

## Arquivos

- `i3status.conf` — Configuração da barra de status

## Instalação

### Fedora

```bash
sudo dnf install i3status
```

### Ubuntu / Debian

```bash
sudo apt install i3status
```

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/i3status
ln -sf $(pwd)/i3status.conf ~/.config/i3status/i3status.conf
```

## Uso

O i3status é iniciado automaticamente pelo i3wm quando configurado no `bar {}` do config do i3. Para recarregar:

```bash
# Recarregar i3 (que reinicia o i3status)
i3-msg restart
```

A configuração exibe informações como volume, teclado, rede, bateria e data/hora. Edite `i3status.conf` para personalizar os módulos exibidos.
