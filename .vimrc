set number
set title
set showmatch
syntax on
set tabstop=4
set smartindent

set ignorecase
set smartcase
set wrapscan
set wildmode=list:longest

set noerrorbells
set fenc=utf-8
set noswapfile
"hi Comment ctermfg=3
set cursorline

inoremap <silent> jj <ESC>

if has('vim_starting')
     set runtimepath+=~/.vim/bundle/neobundle.vim/

    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'freeo/vim-kalisi'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

if neobundle#is_installed('vim-kalisi')
    colorscheme kalisi
    set background=dark
endif

set t_Co=256
syntax enable

set laststatus=2
set showmode
set showcmd
set ruler
