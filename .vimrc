set number
set title
set showmatch
syntax enable
set tabstop=4
set shiftwidth=4
set autoindent
set wildmenu

set ignorecase
set smartcase
set wrapscan

nnoremap j gj
nnoremap k gk
nnoremap <C-p> <ESC>:NERDTree
set whichwrap=h,l
set pastetoggle=<F10>

if &compatible
  set nocompatible               " Be iMproved
endif

 " Required:
 set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
 call dein#begin('~/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('tomtom/tcomment_vim')
 call dein#add('thinca/vim-scouter')
 call dein#add('cohama/lexima.vim')
 call dein#add('tpope/vim-rails')
 call dein#add('scrooloose/nerdtree')
 call dein#add('airblade/vim-gitgutter')

" You can specify revision/branch/tag.
 call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
 call dein#end()

" Required:
 filetype plugin indent on

" If you want to install not installed plugins on startup.
 if dein#check_install()
   call dein#install()
endif

let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
set laststatus=2
" TODO: このキーマップをきかせる？
map <C-/> ggc

set background=dark
