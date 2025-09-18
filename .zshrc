# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

autoload -Uz compinit
compinit
# End of lines added by compinstall

# alias読み込み
cd "$HOME/.zsh_alias.d"
  source "union.alias.sh"
cd -
source "$HOME/.omzrc"
