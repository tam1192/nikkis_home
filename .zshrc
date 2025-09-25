# macos バグ対策
# https://applech2.com/archives/20250730-macos-15-6-sequoia-fixed-date-calc-japanese-locale.html
# にてmacOS 15.4より対象済みとのこと
# alias date='LANG=C /bin/date

export MANPAGER=cat
export EDITOR=/usr/bin/vi
export GITDIR=~/git
hash -d g=~/git
 
export DARWIN_USER=$(whoami)
export DARWIN_HOST=$(hostname -s)
eval $(thefuck --alias) 
eval "$(direnv hook zsh)"

function _kube-current-context () {
  KUBE_PS1_CONTEXT=$(kubectl config current-context)
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _kube-current-context

# 編集禁止
source $HOME/.union.zshrc
