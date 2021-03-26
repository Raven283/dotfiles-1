# Moving around
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../..."

# SSH with color output
alias ssh='TERM=xterm-256color ssh'

# Mac OS-like trash
alias rm="trash"

# cat with better looking output (supports Markdown)
alias cat="bat"

# LSD
alias ls="lsd --group-dirs=first --blocks=permission,user,size,name"
alias l="lsd -l"
alias la="lsd -A"
alias lla="lsd -la"
alias lt="lsd --tree --depth=2"

# Replacement for ping command
alias ping="prettyping"

# Copy directory with progress indicator
alias cpv="rsync -ah --info=progress2"

# View open ports on local machine
alias openports="lsof -nP +c 15 | grep LISTEN"

# Reset current git repository
alias nah="git reset 'HEAD@{1}'"

# Display current outwards-facing IP address
alias myip="curl http://ipecho.net/plain; echo"

# Reload ZSH configuration
alias reload="source ~/.zshrc"
