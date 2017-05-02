set number
set title
set showmatch
syntax enable
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set wildmenu
set ignorecase
set smartcase
set wrapscan
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

nnoremap j gj
nnoremap k gk
nnoremap <C-p> <ESC>:NERDTree
set whichwrap=h,l
set pastetoggle=<F10>

if &compatible
  set nocompatible               " Be iMproved
endif

 " Required:
 set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
 call dein#begin('~/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
 call dein#add('Shougo/neocomplete.vim')
 call dein#add('Shougo/neocomplcache.vim')
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('tomtom/tcomment_vim')
 call dein#add('thinca/vim-scouter')
 call dein#add('cohama/lexima.vim')
 call dein#add('tpope/vim-rails')
 call dein#add('scrooloose/nerdtree')
 call dein#add('airblade/vim-gitgutter')
 call dein#add('tpope/vim-surround')

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
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
