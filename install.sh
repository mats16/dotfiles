#!/bin/sh

oh_my_zsh() {
    ln -sf $(pwd)/.oh-my-zsh/custom/themes/codespaces.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/codespaces.zsh-theme
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

zshrc() {
    cp $(pwd)/.zshrc ~/.zshrc
}

aws_sso() {
    mkdir ~/.aws
    cp $(pwd)/.aws/config ~/.aws/config
}

oh_my_zsh
zshrc
aws_sso
