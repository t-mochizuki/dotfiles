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
set path+=**
set suffixesadd+=.scala,.coffee,.html
nnoremap <C-l> :<C-u>nohlsearch<C-l><CR>
nnoremap <C-L><C-L> :ls<CR>:b 
nnoremap <C-L><C-R> :dis<CR>
nnoremap <C-L><C-K> :map<CR>
nnoremap <C-L><C-M> :marks<CR>
nnoremap <C-L><C-J> :jumps<CR>
nnoremap <C-L><C-H> :his<CR>
nnoremap <C-L><C-U> :undolist<CR>
nnoremap <C-L><C-E> :edit %:p:h<CR>
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
set complete+=k
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
set infercase
set nowrapscan
set incsearch
set hlsearch
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Look " {{{
"--------------------------------------------------
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
" ^U, ^W, ^H, ^G^J, ^G^K
"
"--------------------------------------------------
set backspace=indent,eol,start
set virtualedit=block
" function! CleverTab()
"   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"     return "\<Tab>"
"   else
"     return "\<C-N>"
"   endif
" endfunction
" inoremap <Tab> <C-R>=CleverTab()<CR>
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
" CTRL-W o : Close all other windows
" CTRL-W T : Move the current window to a new tab page
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
" Colorscheme
"--------------------------------------------------
Plugin 'altercation/vim-colors-solarized'

"--------------------------------------------------
" Pairs of handy bracket mappings
"--------------------------------------------------
Plugin 'tpope/vim-unimpaired.git'

"--------------------------------------------------
" Cursor
"--------------------------------------------------
Plugin 'tmhedberg/matchit'

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
" Comment out
"--------------------------------------------------
" I will use gc command with {count}{motion}.
Plugin 'tomtom/tcomment_vim'

"--------------------------------------------------
" Align
"--------------------------------------------------
" :Tab /=
" :Tab /:
" :Tab /|
Plugin 'godlygeek/tabular'

"--------------------------------------------------
" HTML coding
"--------------------------------------------------
Plugin 'mattn/emmet-vim'

"--------------------------------------------------
" Snippets
"--------------------------------------------------
" <C-R><Tab>
" <Tab>
" <C-J>
" <C-K>
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"--------------------------------------------------
" Markdown
"--------------------------------------------------
Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'

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
" integrate git with Vim
"--------------------------------------------------
Plugin 'tpope/vim-fugitive'

"--------------------------------------------------
" Ruby
"--------------------------------------------------
Plugin 'ruby.vim'

"--------------------------------------------------
" Golang
"--------------------------------------------------
Plugin 'fatih/vim-go'

"--------------------------------------------------
" JavaScript
"--------------------------------------------------
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'clausreinke/typescript-tools.vim'

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
Plugin 'kana/vim-smartinput'
Plugin 'yegappan/mru'

call vundle#end()
filetype plugin indent on
syntax on

"--------------------------------------------------
" Gtags
"--------------------------------------------------
let g:Gtags_Auto_Map=1

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
" Colorscheme
"--------------------------------------------------
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"--------------------------------------------------
" TypeScript
"--------------------------------------------------
let g:typescript_compiler_options = '-sourcemap'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"--------------------------------------------------
" UltiSnips
"--------------------------------------------------
let g:UltiSnipsListSnippets = '<c-r><tab>'

" Advance
" :help vimgrep
" :help mark-motions
" :help compiler
" :help complex-repeat
