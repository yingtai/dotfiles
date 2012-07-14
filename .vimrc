syntax on
filetype plugin indent on

set nocompatible
set number
set ruler
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd
set expandtab
set ts=4 sw=4 sts=0
set cursorline
set smartindent
set backup

augroup cch
    autocmd! cch
    autocmd WinLeave * set nocursorline
    autocmd Winenter,BufRead * set cursorline
augroup END

if has('persistent_undo')
    set undodir=~/.vimundo
    set undofile
endif

"色設定
set t_Co=256
hi clear Cursorline
hi CursorLine gui=underline

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
  autocmd!
  autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
  autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"バイナリ編集(xxd)モード（vim -b での起動、もしくは *.bin
"ファイルを開くと発動します）

augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END

"pathogen.vim
call pathogen#runtime_append_all_bundles()

" TwitVim
let twitvim_login_b64 = "X3lpbmd0YWk6dGV0dGE0NDQ="
let twitvim_count = 100
let twitvim_browser_cmd = "firefox.app"

" slimv.vim
let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/slime/start-swank.lisp\""' 

"cabal
let $PATH=$PATH."/Users/<username>/.cabal/bin"

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Powerline
set guifont=Ricty_for_Powerline:h12
set guifont=Envy_Code_R_for_Powerline:h12
" こっちは日本語フォント
set guifontwide=Ricty:h12
" `fancy’ テーマに切り替え
"let g:Powerline_symbols = 'fancy'
