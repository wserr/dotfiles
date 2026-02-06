# Dotfiles

Dotfiles for my current linux workstation. Currently I am testing this
configuration repository on

- Raspberry Pi OS Lite
- pop! os
- Ubuntu

## Software used

- neovim (v0.11.2)
- zellij
- fish

### Neovim installation & configuration

- Clone [neovim repo](https://github.com/neovim/neovim)

```bash
git clone https://github.com/neovim/neovim.git
```

- Checkout stable version

```bash
cd neovim
git checkout stable
```

- Follow
  [build instructions](https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start)

> NOTE: when updating neovim version, first remove the .deps folder before rebuilding.

```bash
sudo rm -r deps
...
```
