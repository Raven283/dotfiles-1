# Directories to be prepended to $PATH
# declare -a dirs_to_prepend
# dirs_to_prepend=(
#   "/usr/bin"
#   "/usr/local/sbin"
#   "/usr/local/git/bin"
#   "/usr/local/"
#   "/sw/bin/"
#   "$HOME/.dotfiles/bin"
#   "$HOME/bin"
#   "$HOME/.rvm/bin"
#   "$(brew --prefix ruby)/bin"
#   "$(brew --prefix coreutils)/libexec/gnubin" # Add brew-installed GNU core utilities bin
#   "$(brew --prefix)/share/npm/bin" # Add npm-installed package bin
# )

# # Explicitly configured $PATH
# PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# for dir in ${(k)dirs_to_prepend[@]}
# do
#   if [ -d ${dir} ]; then
#     # If these directories exist, then prepend them to existing PATH
#     PATH="${dir}:$PATH"
#   fi
# done

# if which ruby >/dev/null && which gem >/dev/null; then
#     PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
# fi

