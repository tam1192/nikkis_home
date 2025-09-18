" my vim rc

" 検索系
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set shortmess-=S

" 表示系
set title
set number
set laststatus=2
set showmatch

" マウス操作を許す
set mouse=a

syntax enable

" hjkl と 矢印キーを同義とする
nnoremap <Up> k
nnoremap <Down> j
nnoremap <Left> h
nnoremap <Right> l
vnoremap <Up> k
vnoremap <Down> j
vnoremap <Left> h
vnoremap <Right> l

" 参考
" https://qiita.com/iwaseasahi/items/0b2da68269397906c14c
