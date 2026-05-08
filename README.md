# Florian's dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Installation

```sh
chezmoi init --apply https://github.com/my-flow/dotfiles.git
```

## Usage

```sh
chezmoi diff      # preview pending changes
chezmoi apply     # apply changes to ~
chezmoi add FILE  # track a new dotfile
chezmoi edit      # open source dir in $EDITOR
```

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don't want or need. Don't blindly use my settings unless you know what that entails. Use at your own risk!
