set backspace=indent,eol,start
set number
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
syntax on
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 " https://github.com/davidhalter/jedi-vim からダウンロード&インストール
 NeoBundle 'davidhalter/jedi-vim'
 " syntastic のインストール
 NeoBundle 'scrooloose/syntastic'

 " syntastic の設定, pyflakes の指定
 " " 代入 スコープ  : 変数名                     = 値
 " " let g        : syntastic_python_checkers = ['pyflakes']
 " g ... Global, l ... Local
 let g:syntastic_python_checkers = ['pyflakes']
 
 " https://github.com/jmcantrell/vim-virtualenv
 " からダウンロード&インストール
 NeoBundle 'jmcantrell/vim-virtualenv' 
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
