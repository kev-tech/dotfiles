export PATH="$HOME/.bin:$PATH"

# tmux
export TERM="screen-256color"

# Homebrew
export PATH="/usr/local/bin:$PATH"
source /Users/whiis/.asdf/asdf.sh

# Aliases
alias py='cd Documents/Programming/python'
alias 3='python3'
alias 2='python2'
alias nova='open . -a nova'
alias xcode='open . -a xcode'
alias write='cd ~/website/ && open . -a nova'
alias tmux="TERM=screen-256color-bce tmux"
alias ide="Bash ~/Scripts/Bash/ide.sh"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
