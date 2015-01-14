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
set history=50
set keywordprg=:help
nnoremap <ESC><ESC> :nohlsearch<CR>
nmap <C-p> :cp<CR>
nmap <C-n> :cn<CR>
nmap <C-f> :bp<CR>
nmap <C-b> :bn<CR>
nnoremap <C-L><C-L> :ls<CR>
nnoremap <C-L><C-R> :dis<CR>
nnoremap <C-L><C-K> :map<CR>
nnoremap <C-L><C-M> :marks<CR>
nnoremap <C-L><C-J> :jumps<CR>
nnoremap <C-L><C-H> :his<CR>
nnoremap <C-L><C-U> :undolist<CR>
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
set number relativenumber
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
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-d> <Del>
inoremap <C-a> <HOME>
inoremap <C-e> <END>
function! CleverTab()
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
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
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=[%{&fileformat}]
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y
set statusline+=[LINE=%l/%L][COLUMN=%c/%{col('$')-1}][%p%%]
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
  autocmd filetype c,cpp setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
augroup END
" }}}
"--------------------------------------------------

" :help feature-list
if has('macunix')
  source ~/.vim/mac.vimrc
endif

" Advance
" :help vimgrep
" :help mark-motions
" :help compiler
