# Dotfiles

Dotfiles for my current linux workstation. Currently I am testing this
configuration repository on

- Raspberry Pi OS Lite
- pop! os

## Software used

- neovim (v0.10.3)
- zsh
- tmux

## Setup from scratch on debian system

This setup is applicable to debian and ubuntu

### Install dependencies

```bash
sudo apt install git nodejs
```

### Zshell installation

- Install zsh

```bash
sudo apt install zsh
```

https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

- Install oh my zsh

See https://ohmyz.sh/#install


- Install zsh-autosuggestions

See https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

- Install atuin

https://atuin.sh/

### Clone dotfiles

Clone dotfiles from [github](https://github.com/wserr/dotfiles)

```bash
ssh-keygen # pick the default options

# install public key (id_rsa.pub) in github
# configure username and password 
git config --global user.email "serruys.willem@hotmail.com"
git config --global user.name "wserr"

cd ~
mkdir system && cd system
git clone git@github.com:wserr/dotfiles.git

cd dotfiles
cp -r nvim ~/.config/nvim
cp zshell/.zshrc ~/
cp tmux/tmux.conf ~/.tmux.conf
```

### Tmux installation

```bash
sudo apt install tmux
```

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
