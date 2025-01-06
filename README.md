# dotfiles
Persisting my dotfile configurations for easy access on any machine

## Brew
Get setup with: https://brew.sh/

## oh-my-zsh
Get setup with: https://github.com/ohmyzsh

## Neovim
As of the creation of this repo, you will need to take the following steps to get setup with this configuration of nvim.

Install the following (with brew unless otherwise specified)):
* neovim
* ripgrep
* The following LSPs ([ref list](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) for more details): 
    * pyright (with pip)
    * lua-language-server
    * ocaml-lsp-server (with opam)
    * typescript-language-server
    * rust-analyzer 

## powerlevel10k
Get setup with: https://github.com/romkatv/powerlevel10k

## tmux
Get setup with: https://github.com/tmux/tmux/wiki

## Enable copying in Windows
Custom clipboard config was added in init.lua. Can copy text with either "+y or "*y depending on the register we would like to use
