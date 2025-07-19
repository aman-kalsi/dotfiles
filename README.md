# dotfiles
Persisting my dotfile configurations for easy access on any machine

Be sure to pull this repo as a bare repo and then checkout the contents to $HOME so that all git metadata stays within the .dotfiles cloned folder while the actual dot files stay within the $HOME directory

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
Custom clipboard config was added in init.lua. Uses underlying Windows copy.exe for copying and powershell.exe for pasting. Use "*y or "+y to specifically copy to Windows clipboard.
