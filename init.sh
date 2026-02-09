#!/usr/bin/bash


# Follow neovim installation in README

# Add symbolic links
ln -s $1/dotfiles/nvim /home/willem/.config/
ln -s $1/dotfiles/zellij /home/willem/.config/
ln -s $1/dotfiles/fish /home/willem/.config/
#https://docs.ansible.com/projects/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible
pipx install --include-deps ansible

