# MPD - Music Player Daemon

Configuração do [MPD](https://www.musicpd.org/), um servidor de reprodução de música.

## Arquivos

- `mpd.conf` — Configuração principal

## Instalação

### Fedora

```bash
sudo dnf install mpd
```

### Ubuntu / Debian

```bash
sudo apt install mpd
```

## Configuração via Link Simbólico

```bash
mkdir -p ~/.config/mpd
ln -sf $(pwd)/mpd.conf ~/.config/mpd/mpd.conf
```
