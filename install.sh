#!/bin/sh

zshrc() {
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ln -sf $(pwd)/.zshrc ~/.zshrc
}

aws_sso() {
    mkdir ~/.aws
    ln -sf $(pwd)/.aws/config ~/.aws/config
}

zshrc
aws_sso
