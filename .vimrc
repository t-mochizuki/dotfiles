scriptencoding utf-8
" All folding is opened by zR
"--------------------------------------------------
" tmp " {{{
"--------------------------------------------------
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Basic part " {{{
"--------------------------------------------------
set nocompatible
set modeline
set modelines=1
set nobackup
set noautoread
set nohidden
set updatetime=4000
set ambiwidth=double
set startofline
set history=1000
set keywordprg=:help
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-L><C-L> :ls<CR>:b 
nnoremap <C-L><C-R> :dis<CR>
nnoremap <C-L><C-K> :map<CR>
nnoremap <C-L><C-M> :marks<CR>
nnoremap <C-L><C-J> :jumps<CR>
nnoremap <C-L><C-H> :his<CR>
nnoremap <C-L><C-U> :undolist<CR>
nnoremap <C-L><C-E> :edit %:p:h<CR>
inoremap jk <ESC>
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Jump " {{{
"
" :help jump-motions
" :help jumps
" :help jumplist
"
" CTRL-O, CTRL-I
"
"--------------------------------------------------
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Folding " {{{
"
" :help folding
"
" zR, zM, za, zA, zo, zc, zO, zC
" zj, zk, [z, ]z
"
"--------------------------------------------------
set foldmethod=marker
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Completion " {{{
"
" :help ins-completion
" :help complete-functions
" :help compl-omni-filetypes
"
" current buffer  => ^N
" user definition => ^X^U
" file name       => ^X^F
" omni            => ^X^O
" dictionary
" tags
"
"--------------------------------------------------
set completeopt=menu,preview
set complete=.,w,b,u,t,i,k
set omnifunc=
set completefunc=
set dictionary=
set wildmenu
set wildmode=longest:full,full
set wildchar=<Tab>
" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Macro " {{{
"--------------------------------------------------
set lazyredraw
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Search " {{{
"--------------------------------------------------
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Look " {{{
"--------------------------------------------------
colorscheme default
set relativenumber
set ruler
set notitle
set list
set listchars=tab:>.,trail:_,eol:?,extends:>,precedes:<,nbsp:%
set cursorline
set showcmd
set scrolloff=999
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Edit " {{{
"
" :help insert-index
"
" CTRL-H, CTRL-D, CTRL-U, CTRL-W
" CTRL-G CTRL-J, CTRL-G CTRL-K, CTRL-G u
"
"--------------------------------------------------
set backspace=indent,eol,start
set virtualedit=block
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Tab " {{{
"--------------------------------------------------
set autoindent
set smartindent
set showmatch
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Status Line " {{{
"--------------------------------------------------
set cmdheight=2
set laststatus=2
set statusline=[%n]
set statusline+=%<%F
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=[%{&fileformat}]
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y
set statusline+=[LINE=%l/%L][COLUMN=%c/%{col('$')-1}][%p%%]
set statusline+=%m
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Window " {{{
"
" CTRL-W s : Split current window in two
" CTRL-W v : Split vertically current window in two
" CTRL-W c : Close current window
" CTRL-W o : All other windows are closed
"
"--------------------------------------------------
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Register " {{{
"
" :help registers
" :help display
" :help yank
" ;help put
"
" INSERT : CTRL-R *
" NORMAL : ["x]yy, ["x]P
" COMMAND : @"
"
"--------------------------------------------------
set clipboard+=unnamed
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Autocmd group " {{{
"
" :help autocommand
"
"--------------------------------------------------
augroup vimrc
  autocmd!
augroup END

autocmd vimrc FileType c,cpp setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
" }}}
"--------------------------------------------------

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
" Filer
"--------------------------------------------------
Plugin 'ctrlpvim/ctrlp.vim'

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

" There is ys, S, ds and cs commands.
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
" Scala
"--------------------------------------------------
Plugin 'derekwyatt/vim-scala'
Plugin 'ktvoelker/sbt-vim'

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
Plugin 'kana/vim-smartinput'
Plugin 'yegappan/mru'
" Plugin 'justinmk/vim-dirvish'
Plugin 'tpope/vim-unimpaired.git'

call vundle#end()
filetype plugin indent on
syntax on

"--------------------------------------------------
" Gtags
"--------------------------------------------------

"--------------------------------------------------
" Poslist
"--------------------------------------------------
nmap <C-i> <Plug>(poslist-prev-pos)
nmap <C-o> <Plug>(poslist-next-pos)
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

"--------------------------------------------------
" CtrlP
"--------------------------------------------------
let g:ctrlp_map = '<c-x>'

function! CreateSpec()
  let s:main_dir = expand('%:p:h')
  let s:file_name = expand('%:t:r')
  let s:test_dir = substitute(s:main_dir, 'src/main/scala', 'src/test/scala', 'y')
  exec "!mkdir -p " . s:test_dir . ";touch " . s:test_dir . "/" . s:file_name . "Spec.scala"
endfunction

function! GitAdd()
  exec "!git add %"
endfunction

" Advance
" :help vimgrep
" :help mark-motions
" :help compiler
