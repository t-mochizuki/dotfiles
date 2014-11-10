"--------------------------------------------------
" Plugin " {{{
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
" Interface
"--------------------------------------------------
" Plugin 'FuzzyFinder'
" Plugin 'kana/vim-ku'
" Plugin 'genutils'
" Plugin 'lookupfile'
Plugin 'ctrlp.vim'

"--------------------------------------------------
" Completion
"--------------------------------------------------
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'AutoComplPop'
" Plugin 'kana/vim-smartinput'
Plugin 'kana/vim-smartchr'
" Plugin 'tpope/vim-endwise'
" Plugin 'cohama/vim-smartinput-endwise'

"--------------------------------------------------
" Cursor
"--------------------------------------------------
" Plugin 'Lokaltog/vim-easymotion'
Plugin 'thinca/vim-poslist'
Plugin 'tmhedberg/matchit'

"--------------------------------------------------
" Visual selection
"--------------------------------------------------
Plugin 'terryma/vim-expand-region'

"--------------------------------------------------
" Highlight
"--------------------------------------------------
Plugin 't9md/vim-quickhl'

"--------------------------------------------------
" Star
"--------------------------------------------------
Plugin 'thinca/vim-visualstar'

"--------------------------------------------------
" Text Object " {{{
"--------------------------------------------------
" textobj のベース
Plugin 'kana/vim-textobj-user'
" Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-line'
" Plugin 'kana/vim-textobj-function'
" Plugin 'kana/vim-textobj-syntax'
" Plugin 'kana/vim-textobj-jabraces'
" Plugin 'kana/vim-textobj-lastpat'
" Plugin 'kana/vim-textobj-indent'
" Plugin 'kana/vim-textobj-fold'
" Plugin 'kana/vim-textobj-diff'
" Plugin 'kana/vim-textobj-datetime'
" Plugin 'kana/vim-textobj-underscore'
" Plugin 'kana/vim-textobj-django-template'
" Plugin 'kana/vim-textobj-help'
" Plugin 'thinca/vim-textobj-between'
" Plugin 'thinca/vim-textobj-comment'
" Plugin 'thinca/vim-textobj-function-javascript'
" Plugin 'thinca/vim-textobj-function-perl'
" Plugin 'gilligan/textobj-lastpaste'
" Plugin 'deton/textobj-mbboundary.vim'
" Plugin 'akiyan/vim-textobj-xml-attribute'
" Plugin 'akiyan/vim-textobj-php'
" Plugin 'saihoooooooo/vim-textobj-space'
" Plugin 'mattn/vim-textobj-url'
" Plugin 'h1mesuke/textobj-wiw'
" Plugin 'rhysd/vim-textobj-lastinserted'
" Plugin 'rhysd/vim-textobj-continuous-line'
" Plugin 'rhysd/vim-textobj-ruby'
Plugin 'nelstrom/vim-textobj-rubyblock'
" Plugin 'anyakichi/vim-textobj-xbrackets'
" Plugin 'hchbaw/textobj-motionmotion.vim'
" Plugin 'deris/vim-textobj-enclosedsyntax'
" Plugin 'deris/vim-textobj-headwordofline'
" Plugin 'rbonvall/vim-textobj-latex'
" Plugin 'sgur/vim-textobj-parameter'
" Plugin 'mattn/vim-textobj-cell'
" Plugin 'osyo-manga/vim-textobj-context'
" Plugin 'osyo-manga/vim-textobj-multiblock'
" Plugin 'glts/vim-textobj-indblock'
" Plugin 'RyanMcG/vim-textobj-dash'
" Plugin 'bps/vim-textobj-python'
" Plugin 'anyakichi/vim-textobj-ifdef2'
" Plugin 'mjbrownie/html-textobjects'
" Plugin 'vimtaku/vim-textobj-keyvalue'
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Operator
"--------------------------------------------------
" Plugin 'kana/vim-operator-user'
" Plugin 'kana/vim-operator-replace'
" Plugin 'tyru/operator-html-escape.vim'
" Plugin 'tyru/operator-star.vim'
" Plugin 'tyru/operator-reverse.vim'

"--------------------------------------------------
" Commandline
"--------------------------------------------------
Plugin 'emacscommandline'

"--------------------------------------------------
" Undo
"--------------------------------------------------
Plugin 'sjl/gundo.vim'

"--------------------------------------------------
" Yank
"--------------------------------------------------
Plugin 'LeafCage/yankround.vim'

"--------------------------------------------------
" Submode
"--------------------------------------------------
Plugin 'kana/vim-submode'

"--------------------------------------------------
" Explorer
"--------------------------------------------------
Plugin 'scrooloose/nerdtree'

"--------------------------------------------------
" Outline
"--------------------------------------------------
Plugin 'majutsushi/tagbar'

"--------------------------------------------------
" Comment out
"--------------------------------------------------
Plugin 'tomtom/tcomment_vim'

"--------------------------------------------------
" HTML coding
"--------------------------------------------------
" Plugin 'javascript.vim'
Plugin 'html5.vim'
Plugin 'coffee.vim'
Plugin 'mattn/emmet-vim'
" Plugin 'mattn/webapi-vim'

"--------------------------------------------------
" Syntax checker
"--------------------------------------------------
Plugin 'scrooloose/syntastic'

"--------------------------------------------------
" integrate Git with Vim
"--------------------------------------------------
Plugin 'tpope/vim-fugitive'

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
" Plugin 'skwp/vim-rspec'
" Plugin 'vim-scripts/AnsiEsc.vim'

"--------------------------------------------------
" Golang
"--------------------------------------------------
Plugin 'fatih/vim-go'

"--------------------------------------------------
" C
"--------------------------------------------------
" Plugin 'c.vim'

"--------------------------------------------------
" Grammer Checker
"--------------------------------------------------
" Plugin 'rhysd/vim-grammarous'

"--------------------------------------------------
" Reference
"--------------------------------------------------
Plugin 'ref.vim'

"--------------------------------------------------
" Statusline
"--------------------------------------------------
" Plugin 'bling/vim-airline'

"--------------------------------------------------
" Utility
"--------------------------------------------------
" Plugin 'wesleyche/SrcExpl'
" Plugin 'AndrewRadev/switch.vim'
" Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tyru/capture.vim'
" Plugin 'tyru/restart.vim'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-altr'
" Plugin 'taku-o/vim-toggle'

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'moll/vim-node'



"--------------------------------------------------
" Snippet
"--------------------------------------------------
" Plugin 'SirVer/ultisnips'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

"--------------------------------------------------
" Snippets
"--------------------------------------------------
" Plugin 'honza/vim-snippets'
" Plugin 'Shougo/neosnippet-snippets'

call vundle#end()
filetype plugin indent on
syntax on

"--------------------------------------------------
" poslist
"--------------------------------------------------
nmap <C-o> <Plug>(poslist-prev-pos)
nmap <C-i> <Plug>(poslist-next-pos)
let g:poslist_histsize = 1000

"--------------------------------------------------
" EasyMotion
"--------------------------------------------------
" nnoremap [motion] <Nop>
" nmap ,m [motion]
" map [motion] <Plug>(easymotion-prefix)
" let g:EasyMotion_keys = 'ASDGHKLQWERTYUIOPZXCVBNMFJ;'
" let g:EasyMotion_use_upper = 1
" let g:EasyMotion_startofline = 0
" let g:EasyMotion_do_shade = 0

"--------------------------------------------------
" Gundo
"--------------------------------------------------
nnoremap <Space>u :GundoToggle<CR>

"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nnoremap <Space>t :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_sort = 0

"--------------------------------------------------
" NERDTree
"--------------------------------------------------
nnoremap <Space>d :NERDTreeToggle<CR>

"--------------------------------------------------
" SrcExpl
"--------------------------------------------------
" nnoremap <Space>s :SrcExplToggle<CR>

"--------------------------------------------------
" CtrlP
"--------------------------------------------------
let g:ctrlp_map = '<c-x><c-f>'
nnoremap <c-x><c-b> :CtrlPBuffer<CR>

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
  " exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
  " let g:go_disable_autoinstall = 1
  let g:go_bin_path = expand("$GOPATH/bin")
endif

"--------------------------------------------------
" submode "{{{
"--------------------------------------------------
let g:submode_always_show_submode = 1
let g:submode_timeout = 0
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>+')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>-')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>+')
call submode#map('winsize', 'n', '', '-', '<C-w>-')
" call submode#enter_with('yank', 'n', '', '', '')
" call submode#enter_with('yank', 'n', '', '', '')
" call submode#map('yank', 'n', '', '', '')
" call submode#map('yank', 'n', '', '', '')
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Yankround
"--------------------------------------------------
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
" nnoremap <silent>g<C-p> :<C-u>CtrlPYankRound<CR>
let g:yankround_max_history = 50

"--------------------------------------------------
" Fugitive
"--------------------------------------------------
nnoremap [git] <Nop>
nmap ,g [git]
nnoremap [git]d :<C-u>Gdiff HEAD<Enter>
nnoremap [git]s :<C-u>Gstatus<Enter>
nnoremap [git]l :<C-u>Glog<Enter>
nnoremap [git]a :<C-u>Gwrite<Enter>
nnoremap [git]c :<C-u>Gcommit<Enter>
nnoremap [git]C :<C-u>Git commit --amend<Enter>
nnoremap [git]b :<C-u>Gblame<Enter>
" }}}
"--------------------------------------------------
