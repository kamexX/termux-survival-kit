#!/bin/bash

# Termux Survival Kit Installer
# Installiert wichtige Unix-Tools und Development-Tools für Termux

echo "=== Termux Survival Kit Installer ==="

# Update & Upgrade Termux
echo "[*] Updating packages..."
pkg update -y && pkg upgrade -y

echo "[*] Setting up Storage..."
termux-setup-storage


# Liste der Pakete
PACKAGES=(
  zsh
  bash
  tmux
  htop
  git
  vim
  nano
  python
  nodejs
  golang
  openssh
  wget
  curl
  nmap
  net-tools
  busybox
  coreutils
  findutils
  tree
  jq
  rsync
  mc
)

# Installation der Pakete
for pkgname in "${PACKAGES[@]}"; do
    echo "[*] Installing $pkgname..."
    if pkg list-installed | grep -q "^$pkgname"; then
        echo "[!] $pkgname is already installed, skipping."
    else
        pkg install -y $pkgname
    fi
done

# Oh-My-Zsh Installation
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "[*] Installing Oh-My-Zsh..."
    git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh
    cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
else
    echo "[!] Oh-My-Zsh already installed, skipping."
fi

echo "=== Installation completed! ==="
echo "You may want to change your default shell to zsh with: chsh -s zsh"
