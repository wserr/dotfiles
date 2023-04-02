#!/usr/bin/env bash

# Run this script to copy over settings to .config folder

echo "Copying i3 settings..."
cp -r i3 ~/.config/

echo "Copying nvim settings..."
cp -r nvim ~/.config/

echo "Copying polybar settings..."
cp -r polybar ~/.config/

echo "Copying zshell settings..."
cp zshell/.zshrc ~/

echo "Done"
