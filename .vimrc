"--------------------------------------------------
" Basic part " {{{
"--------------------------------------------------
set nocompatible
set completeopt=preview
set complete=.,w,b,u,t,i,d,k
set modelines=1
set scrolloff=999
set lazyredraw
set nobackup
set foldmethod=marker
set wildmenu
set wildmode=longest:full,full
set dict=

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
colorscheme desert
set number
set ruler
set notitle
set list
set listchars=tab:>.,trail:_,eol:?,extends:>,precedes:<,nbsp:%
set cursorline
set showcmd
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Edit " {{{
"--------------------------------------------------
set backspace=indent,eol,start
inoremap <C-a> <HOME>
inoremap <C-e> <END>
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
set cmdheight=1
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
set statusline+=%=
set statusline+=[HEX=0x%B]
set statusline+=[C=%c/%{col('$')-1}]
set statusline+=[L=%l/%L]
set statusline+=[%p%%]
set statusline+=%{fugitive#statusline()}
" }}}
"--------------------------------------------------

" set hidden
" set autoread
set updatetime=0
set ambiwidth=double
set nostartofline
set virtualedit=block
set history=50
" nmap <C-P> :cp<CR>
" nmap <C-N> :cn<CR>
set keywordprg=:help
runtime macros/matchit.vim


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
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Augroup part " {{{
"--------------------------------------------------
" Enable omni completion.
" augroup init (from tyru's vimrc)
augroup vimrc
  autocmd!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight StatusLine ctermfg=Green
  autocmd InsertEnter * highlight StatusLine ctermfg=Black

  autocmd filetype coffee,javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
augroup END

" autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete

" augroup currentdir
"   autocmd!
"   autocmd BufEnter * lcd %:p:h
" augroup END

" augroup rbsyntaxcheck
"   autocmd!
"   autocmd BufWrite *.rb w !ruby -c
" augroup END
" }}}
"--------------------------------------------------

"--------------------------------------------------
" Plugin part
"--------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--------------------------------------------------
" manage plugins
"--------------------------------------------------
Plugin 'gmarik/Vundle.vim'

"--------------------------------------------------
" Library
"--------------------------------------------------
Plugin 'L9'

"--------------------------------------------------
" Interface
"--------------------------------------------------
Plugin 'FuzzyFinder'
" Plugin 'kana/vim-ku'
" Plugin 'genutils'
" Plugin 'lookupfile'
" Plugin 'ctrlp.vim'

"--------------------------------------------------
" Completion
"--------------------------------------------------
Plugin 'Valloric/YouCompleteMe'
" Plugin 'AutoComplPop'
Plugin 'kana/vim-smartinput'
Plugin 'kana/vim-smartchr'
Plugin 'tpope/vim-endwise'
" Plugin 'cohama/vim-smartinput-endwise'

"--------------------------------------------------
" Cursor
"--------------------------------------------------
Plugin 'Lokaltog/vim-easymotion'
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
Plugin 'SirVer/ultisnips'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

"--------------------------------------------------
" Snippets
"--------------------------------------------------
Plugin 'honza/vim-snippets'
" Plugin 'Shougo/neosnippet-snippets'

call vundle#end()
filetype plugin indent on
syntax on

set omnifunc=syntaxcomplete#Complete
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_use_ultisnips_completer = 1

"--------------------------------------------------
" poslist
"--------------------------------------------------
nmap <C-o> <Plug>(poslist-prev-pos)
nmap <C-i> <Plug>(poslist-next-pos)
let g:poslist_histsize = 1000

"--------------------------------------------------
" EasyMotion
"--------------------------------------------------
nnoremap [motion] <Nop>
nmap ,m [motion]
map [motion] <Plug>(easymotion-prefix)
let g:EasyMotion_keys = 'ASDGHKLQWERTYUIOPZXCVBNMFJ;'
let g:EasyMotion_use_upper = 1
let g:EasyMotion_startofline = 0
let g:EasyMotion_do_shade = 0

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
nnoremap <Space>s :SrcExplToggle<CR>

"--------------------------------------------------
" FuzzyFinder
"--------------------------------------------------
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 1000
noremap <script> <silent> <unique> <Space>b :FufBuffer<CR>
noremap <script> <silent> <unique> <Space>m :FufMruFile<CR>
noremap <script> <silent> <unique> <Space>f :FufFile<CR>

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
" Switch
"--------------------------------------------------
nnoremap - :Switch<cr>

"--------------------------------------------------
" Fugitive " {{{
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

"--------------------------------------------------
" vim-altr {{
" nmap <F3> <Plug>(altr-forward)
" nmap <F2> <Plug>(altr-back)

" let s:bundle = neobundle#get("vim-altr")
" function! s:bundle.hooks.on_source(bundle)
"   " For ruby tdd
"   call altr#define('%.rb', 'spec/%_spec.rb')
"   " For ruby tdd
"   call altr#define('lib/%.rb', 'spec/lib/%_spec.rb', 'spec/%_spec.rb')
"   " For rails tdd
"   call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%s.rb')
"   call altr#define('app/controllers/%.rb', 'spec/controllers/%_spec.rb')
"   call altr#define('app/helpers/%.rb', 'spec/helpers/%_spec.rb')
" endfunction
" unlet s:bundle
" }}
"--------------------------------------------------

"--------------------------------------------------
" toggle.vim {{
" imap <silent><C-C> <Plug>ToggleI
" nmap <silent><C-C> <Plug>ToggleN
" vmap <silent><C-C> <Plug>ToggleV

let g:toggle_pairs = {
      \'and':'or',
      \'or':'and',
      \'if':'unless',
      \'unless':'if',
      \'elsif':'else',
      \'else':'elsif',
      \'it':'specify',
      \'specify':'it',
      \'describe':"context",
      \'context':"describe",
      \'true':'false',
      \'false':'true',
      \'yes':'no',
      \'no':'yes',
      \'on':'off',
      \'off':'on',
      \'public':'protected',
      \'protected':'private',
      \'private':'public',
      \'&&':'||',
      \'||':'&&'
      \}
" }}
"--------------------------------------------------

"--------------------------------------------------
" NeoSnippet " {{
"--------------------------------------------------
" Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
"
" SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"
"
" For snippet_complete marker.
" if has('conceal')
"   set conceallevel=2 concealcursor=i
" endif
"
" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
"
" nnoremap <Space>se :<C-U>NeoSnippetEdit<CR>
" let s:bundle = neobundle#get('neosnippet')
" function! s:bundle.hooks.on_source(bundle)
"   let g:neosnippet#snippets_directory = $HOME . '/.vim/snippets'
"
"   " enable ruby & rails snippet only rails file
"   function! s:RailsSnippet()
"     if exists("b:rails_root") && (&filetype == "ruby")
"       NeoSnippetSource ~/.vim/snippets/rails.snip
"     endif
"   endfunction
"
"   function! s:RSpecSnippet()
"     if (expand("%") =~ "_spec\.rb$") || (expand("%") =~ "^spec.*\.rb$")
"       NeoSnippetSource ~/.vim/snippets/rspec.snip
"     endif
"   endfunction
"
"   MyAutocmd BufEnter * call s:RailsSnippet()
"   MyAutocmd BufEnter * call s:RSpecSnippet()
" endfunction
"--------------------------------------------------
" unlet s:bundle" nnoremap <Space>se :<C-U>NeoSnippetEdit<CR>
" let s:bundle = neobundle#get('neosnippet')
" function! s:bundle.hooks.on_source(bundle)
"   let g:neosnippet#snippets_directory = $HOME . '/.vim/snippets'
"
"   " enable ruby & rails snippet only rails file
"   function! s:RailsSnippet()
"     if exists("b:rails_root") && (&filetype == "ruby")
"       NeoSnippetSource ~/.vim/snippets/rails.snip
"     endif
"   endfunction
"
"   function! s:RSpecSnippet()
"     if (expand("%") =~ "_spec\.rb$") || (expand("%") =~ "^spec.*\.rb$")
"       NeoSnippetSource ~/.vim/snippets/rspec.snip
"     endif
"   endfunction
"
"   MyAutocmd BufEnter * call s:RailsSnippet()
"   MyAutocmd BufEnter * call s:RSpecSnippet()
" endfunction
" unlet s:bundle"
" }}
"--------------------------------------------------

"--------------------------------------------------
" UltiSnips " {{
"--------------------------------------------------
" Track the engine.
" Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsExpandTrigger="<c-b>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" }}
"--------------------------------------------------
