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
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Folding " {{{
"--------------------------------------------------
set foldmethod=marker
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Completion " {{{
"
" :help ins-completion
" :help complete-functions
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
set complete=.,k,i,t
set omnifunc=
set completefunc=
set dictionary=
set wildmenu
set wildmode=longest:full,full
set wildchar=<Tab>
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
colorscheme torte
set number relativenumber
set ruler
set notitle
set list
set listchars=tab:>.,trail:_,eol:?,extends:>,precedes:<,nbsp:%
set cursorline
set noshowcmd
set scrolloff=999
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Edit " {{{
"
" CTRL-H, CTRL-D, CTRL-U, CTRL-W
" CTRL-G CTRL-J, CTRL-G CTRL-K
" CTRL-C, CTRL-G u
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

nnoremap [gtags] <Nop>
nmap ,r [gtags]
nmap [gtags] :Gtags -r<CR>

nnoremap [close] <Nop>
nmap ,q [close]
nmap [close] :cclose<CR>

" nmap <C-p> :cp<CR>
" nmap <C-n> :cn<CR>
" map ZZ :wq!<CR>
" nmap <C-C><C-P> :bp<CR>
" nmap <C-C><C-N> :bn<CR>
" nmap <C-C><C-D> :bd<CR>
" nmap <C-C><C-N> :new<CR>
" nmap <C-L><C-L> :ls<CR>
" nmap <C-L><C-R> :dis<CR>
" nmap <C-L><C-K> :map<CR>
" nmap <C-L><C-M> :marks<CR>
" nmap <C-L><C-J> :jumps<CR>
" nmap <C-L><C-H> :his<CR>
" nmap <C-L><C-U> :undolist<CR>
" nmap <C-W><C-A> :all<CR>

"--------------------------------------------------
" Autocmd group " {{{
"--------------------------------------------------
augroup vimrc
  autocmd!
  " autocmd InsertLeave * setlocal nocursorline
  " autocmd InsertEnter * setlocal cursorline
  " autocmd InsertLeave * highlight StatusLine ctermfg=Green
  " autocmd InsertEnter * highlight StatusLine ctermfg=Black
  autocmd filetype coffee,javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd filetype c,cpp setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  " augroup currentdir
  "   autocmd!
  "   autocmd BufEnter * lcd %:p:h
  " augroup END

  " augroup rbsyntaxcheck
  "   autocmd!
  "   autocmd BufWrite *.rb w !ruby -c
  " augroup END
  "
  " autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
  " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete
augroup END
" }}}
"--------------------------------------------------

if has('macunix')
  source ~/.vim/mac.vimrc
endif
