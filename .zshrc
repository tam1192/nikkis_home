# macos バグ対策
# https://applech2.com/archives/20250730-macos-15-6-sequoia-fixed-date-calc-japanese-locale.html
# にてmacOS 15.4より対象済みとのこと
# alias date='LANG=C /bin/date

export MANPAGER=cat
export EDITOR=/usr/bin/vi
export OSHICHAR="聖園ミカ"
export GITDIR=~/git
hash -d g=~/git
 
export DARWIN_USER=$(whoami)
export DARWIN_HOST=$(hostname -s)
eval $(thefuck --alias) 
eval "$(direnv hook zsh)"
export SSH_AUTH_SOCK=/Users/nikki/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

function _kube-current-context () {
  KUBE_PS1_CONTEXT=$(kubectl config current-context)
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _kube-current-context

# 編集禁止
source $HOME/.union.zshrc

# 不要な表示なので消す
function bzr_prompt_info() {}

function command_not_found_handler() {
  local moshi="$(echo ${(k)commands} | awk 'BEGIN { FS=","; RS=" " } $0~/^'"$0"'/{if (length(out) == 0) {out=$0} else if (length($0) < length(out)) {out=$0} } END {print out}')"

  echo "またタイポしたの〜　ざぁこざぁこ"
  if [[ -z $moshi ]]; then
	echo "タイポが酷すぎてなんて打ちたかったのかわかんなぁい♡"
  else
  	echo "もしかしてぇ、${moshi}って入力しようとしたの〜？"
  fi
  echo "また会いたかったら、タイポしてね〜"
}

