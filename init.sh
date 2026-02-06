#!/usr/bin/bash


# Follow neovim installation in README

# Add symbolic links
ln -s /home/willem/Repos/System/dotfiles/nvim /home/willem/.config/
ln -s /home/willem/Repos/System/dotfiles/zellij /home/willem/.config/
ln -s /home/willem/Repos/System/dotfiles/fish /home/willem/.config/
#https://docs.ansible.com/projects/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible
pipx install --include-deps ansible

