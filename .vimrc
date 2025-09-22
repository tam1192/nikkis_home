" nikkis_vim 読み込み
cd $HOME/.gitmodules.d/tam1192/nikkis_vim
  " 先に.vimを読み込む
  execute 'set runtimepath+='.getcwd().'/.vim'
  source .vimrc
cd -

