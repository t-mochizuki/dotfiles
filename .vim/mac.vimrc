"--------------------------------------------------
" Plugin
"--------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--------------------------------------------------
" Plugin manager
"--------------------------------------------------
Plugin 'gmarik/Vundle.vim'

"--------------------------------------------------
" Library
"--------------------------------------------------
Plugin 'L9'

"--------------------------------------------------
" Completion
"--------------------------------------------------
Plugin 'AutoComplPop'

"--------------------------------------------------
" Cursor
"--------------------------------------------------
Plugin 'thinca/vim-poslist'
Plugin 'tmhedberg/matchit'

"--------------------------------------------------
" Visual selection
"--------------------------------------------------
Plugin 'terryma/vim-expand-region'

"--------------------------------------------------
" Star
"--------------------------------------------------
Plugin 'thinca/vim-visualstar'

"--------------------------------------------------
" Text Object
"--------------------------------------------------
Plugin 'kana/vim-textobj-user'

" There is il, al, ii, ai, iz and az commands.
" There is also iI, aI, but I'd not use these commands.
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-fold'

" There is ys, S, ds and cs commands.
" I'd not use ys command.
Plugin 'tpope/vim-surround'

"--------------------------------------------------
" Outline
"--------------------------------------------------
Plugin 'majutsushi/tagbar'

"--------------------------------------------------
" Comment out
"--------------------------------------------------
" I will use gc command with {count}{motion}.
Plugin 'tomtom/tcomment_vim'

"--------------------------------------------------
" HTML coding
"--------------------------------------------------
Plugin 'mattn/emmet-vim'

"--------------------------------------------------
" Syntax checker
"--------------------------------------------------
Plugin 'scrooloose/syntastic'

"--------------------------------------------------
" integrate ag with Vim
"--------------------------------------------------
Plugin 'rking/ag.vim'

"--------------------------------------------------
" integrate GNU GLOBAL with Vim
"--------------------------------------------------
Plugin 'gtags.vim'

"--------------------------------------------------
" Ruby
"--------------------------------------------------
Plugin 'ruby.vim'
Plugin 'rails.vim'
Plugin 'tpope/vim-rails'

"--------------------------------------------------
" Golang
"--------------------------------------------------
Plugin 'fatih/vim-go'

"--------------------------------------------------
" JavaScript
"--------------------------------------------------
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

"--------------------------------------------------
" Reference
"--------------------------------------------------
Plugin 'ref.vim'

"--------------------------------------------------
" Utility
"--------------------------------------------------
Plugin 'tyru/capture.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'

call vundle#end()
filetype plugin indent on
syntax on

"--------------------------------------------------
" Gtags
"--------------------------------------------------
nnoremap [gtags] <Nop>
nmap ,g [gtags]
nmap [gtags] :Gtags<CR>
nmap [gtags]r :Gtags -r<CR>

"--------------------------------------------------
" Poslist
"--------------------------------------------------
nmap <C-o> <Plug>(poslist-prev-pos)
nmap <C-i> <Plug>(poslist-next-pos)
let g:poslist_histsize = 1000

"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nnoremap <Space>t :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_sort = 0

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'js',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }

"--------------------------------------------------
" Ag
"--------------------------------------------------
let g:agprg="ag --column --all-text --smart-case"
let g:aghighlight=0
let g:ag_lhandler="botright lopen 5"
let g:ag_qhandler="botright copen 5"

"--------------------------------------------------
" Golang
"--------------------------------------------------
if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif

if $GOPATH != ''
  let g:go_bin_path = expand("$GOPATH/bin")
endif
