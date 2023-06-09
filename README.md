# Vagner's dotfiles

This repository contains a personalized collection of
[dotfiles](https://wiki.archlinux.org/title/Dotfiles), which are configuration
files used in the UNIX operating system. These dotfiles provide an opinionated
way to configurate a specific program, allowing for a consistent and
personalized experience across different environments. The project has the
following structure.

```
.
├── LICENSE
├── README.md
├── i3
│   ├── config
│   ├── config.backup
│   ├── img
│   ├── touchpad_toggle.sh
│   ├── urxvtc
│   └── urxvtd
├── i3status
│   └── i3status.conf
├── misc
│   └── Xresources
├── mpd
│   └── mpd.conf
├── ncmpcpp
│   ├── bindings
│   └── config
├── neovim
│   ├── init.vim
│   ├── local_bundles.vim
│   └── local_init.vim
├── polybar
│   ├── config
│   ├── config~
│   └── launch.sh
├── ranger
│   ├── bookmarks
│   ├── commands.py
│   ├── commands_full.py
│   ├── rc.conf
│   ├── rifle.conf
│   ├── scope.sh
│   └── tagged
├── termite
│   └── config
├── vim
└── zsh
    └── zshrc
```

## Purpose

The purpose of this repository is to share and maintain a set of dotfiles that
reflect personal preferences and configurations for different software
applications commonly used in UNIX-based systems. By leveraging these dotfiles,
users can quickly and easily apply a consistent setup across multiple machines
or share their preferred configurations with others.

## Contributing

Contributions to this repository are highly encouraged and welcomed from the
community. Whether you have your own unique dotfiles or improvements to
existing ones, feel free to submit a pull request. Please ensure that your
contributions adhere to the following guidelines:

1. Each dot file should be placed in its corresponding directory within the
   repository, following a clear and organized structure.
2. Clearly document any modifications or additions made to the dotfiles,
   providing context and reasoning when necessary.
3. Ensure that any contributed dotfiles are properly tested and functional.
4. Be respectful of other contributors and maintain a positive and inclusive
   environment.

## Getting Started

To get started with this repository, follow these steps:

1. Clone the repository to your local machine using the following command:

   ```
   git clone https://github.com/vagnerclementino/dotfiles.git
   ```

2. Explore the various directories and files to find the dotfiles that
   interest you.
3. Copy the desired dotfiles to your home directory (or other appropriate
   location) on your UNIX-based system.
4. Customize the dotfiles according to your preferences and specific needs.
5. Enjoy the benefits of a personalized and opinionated configuration for your
   favorite software applications.

## License

This repository is licensed under the [MIT License](LICENSE), which allows you
to freely use, modify, and distribute the dotfiles. However, please note that
the dotfiles provided in this repository are intended for personal use and may
require additional permissions or acknowledgments when used in a commercial or
shared environment.

## Disclaimer

While every effort has been made to ensure the accuracy and functionality of
the dotfiles in this repository, they are provided "as is," without warranty
of any kind, express or implied. The repository maintainer and contributors
cannot be held responsible for any issues, damages, or consequences arising
from the use of these dotfiles.

---

Your contributions are greatly appreciated! Together, let's create an extensive
collection of opinionated dotfiles that enhance the UNIX experience for
everyone.
