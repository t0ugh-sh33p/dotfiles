#!/bin/bash

set -u
set -e


install_package () {
    #
    if [[ $# -eq 1 ]]; then
        package=$1
        if pacman -Qs "^${package}$" > /dev/null 2>&1; then
            :
        else
            sudo pacman -S --needed --noconfirm ${package} > /dev/null 2>&1
        fi
    else
        :
    fi    
}

if [[ -e /etc/arch-release ]]; then
    
    install_package "base-devel"
    install_package "glibc"
    install_package "neovim"
    install_package "sudo"
    install_package "libarchive"
    install_package "openssh"
    install_package "python"
    install_package "python-pip"
    install_package "python-pipenv"
    install_package "pyenv"
    install_package "go"
    install_package "git"
    install_package "php"
    install_package "tmux"
    install_package "zsh"
    install_package "bat"
    install_package "ccze"

    exit 0
else
    echo "unsupported os..."
    exit 1
fi
