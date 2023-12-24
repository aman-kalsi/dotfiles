# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add US locale
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export PATH=$(echo "$PATH" | sed -e 's/:\/mnt[^:]*//g') # strip out problematic Windows %PATH%
export PATH="/home/amank98/.local/bin:usr/local/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
source .zsh_aliases

source ~/powerlevel10k/powerlevel10k.zsh-theme
COMPLETION_WAITING_DOTS="%F{yellow}holdup...%f"

plugins=(git tmux)
source $ZSH/oh-my-zsh.sh

# ocaml opam config
[[ ! -r /home/amank98/.opam/opam-init/init.zsh ]] || source /home/amank98/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# nvim config
export NVM_DIR="/home/amank98/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
