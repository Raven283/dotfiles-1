

# export ZSH=$HOME/.oh-my-zsh
# ZSH_DISABLE_COMPFIX="true"
# COMPLETION_WAITING_DOTS="false"
# plugins=(git)
# source $ZSH/oh-my-zsh.sh

# Load zsh autosuggestion functionality
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zplug basics:
# - `zplug status` to see if packages are up to date
# - `zplug update` to update packages
# - `zplug list` to see currently managed packages
# - `zplug clean` to clear out now unmanaged packages
# - `zplug 'owner/repo'` to use a plugin from https://github.com/$owner/$repo
# zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
# zplug 'zsh-users/zsh-history-substring-search', defer:3 # (like fish)
# zplug 'zsh-users/zsh-autosuggestions' # (like fish)
# zplug "zsh-users/zsh-autosuggestions"
# if zplug check zsh-users/zsh-autosuggestions; then
#   ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
#   ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
# fi

# zplug "zsh-users/zsh-syntax-highlighting"

# zplug "zsh-users/zsh-history-substring-search"
# if zplug check zsh-users/zsh-history-substring-search; then
#   zmodload zsh/terminfo
#   bindkey "$terminfo[cuu1]" history-substring-search-up
#   bindkey "$terminfo[cud1]" history-substring-search-down
# fi

# zplug "rupa/z", use:z.sh

# k
# Directory listings for zsh with git features.
# https://github.com/supercrabtree/k
# zplug "supercrabtree/k"

# alias-tips
# Reminds you of aliases you have already.
# https://github.com/djui/alias-tips
# zplug "djui/alias-tips"

# zplug 'chrissicool/zsh-256color' # if 256-color mode isn't kicking in
# .autoenv support (check out the readme if you havent heard of that)
# zplug "Tarrasch/zsh-autoenv"
# zplug "zsh-users/zsh-completions", depth:1 # more completions

# zplug "robbyrussell/oh-my-zsh", use:"lib/directories.zsh"
# zplug "robbyrussell/oh-my-zsh", use:"lib/history.zsh"
# zplug "robbyrussell/oh-my-zsh", use:"lib/clipboard.zsh"
# zplug "robbyrussell/oh-my-zsh", use:"lib/completion.zsh"

# Supports oh-my-zsh plugins and the like
# zplug "plugins/git",   from:oh-my-zsh

# Load theme file
# zplug 'dracula/zsh', as:theme

# fzf
# zplug 'junegunn/fzf', \
#       as:command, \
#       use:'bin/{fzf,fzf-tmux}', \
#       if:"[[ $OSTYPE == linux* || $OSTYPE == darwin* ]]", \
#       hook-build:'./install --key-bindings --completion --no-update-rc'
# zplug "junegunn/fzf", from:github, use:"shell/completion.zsh"
# zplug "junegunn/fzf", from:github, use:"shell/key-bindings.zsh"

# Install plugins if there are plugins that have not been installed
# zplug check --verbose
# if ! zplug check; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi

# Then, source plugins and add commands to $PATH
# zplug load #--verbose
