# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

function zvm_config() {
  ZVM_INIT_MODE='sourcing'
}

source ~/.dotfiles/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Theme 
antigen theme romkatv/powerlevel10k


# other plugins
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions

# Syntax highlighting bundle.
# Needs to be loaded after zsh-vi-mode or it won't work
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen 'zsh-users/zsh-history-substring-search'
antigen bundle zsh-users/zsh-history-substring-search

# Tell Antigen that you're done.
antigen apply

# has to be after antigen apply
# configure your keybindings here... just 2 lines of code!
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias vim='nvim'
alias ll='ls -al'

# loads all of the zsh functions
# this lazy loads the functions so my terminal isn't slow as shit
fpath=( ~/.dotfiles/zsh-functions "${fpath[@]}" )
autoload -Uz $fpath[1]/*(.:t)

# for tmux
export TERM=screen-256color
