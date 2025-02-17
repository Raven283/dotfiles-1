export ZPLUG_HOME=$(brew --prefix zplug)
source $ZPLUG_HOME/init.zsh

zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gpg-agent", from:oh-my-zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/history-substring-search", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zplug/zplug", hook-build:"zplug --self-manage"

zplug "$HOME/.zshrc.d/", from:local

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# set -o vi
if zplug check zsh-users/zsh-history-substring-search; then
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
fi

# History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# Case insensitive autocompletion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# Start Starship Prompt
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
eval "$(rbenv init -)"
