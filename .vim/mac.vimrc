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
" Interface
"--------------------------------------------------
Plugin 'ctrlp.vim'

"--------------------------------------------------
" Cursor
"--------------------------------------------------
Plugin 'tmhedberg/matchit'

"--------------------------------------------------
" Visual selection
"--------------------------------------------------
Plugin 'terryma/vim-expand-region'

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

"--------------------------------------------------
" Golang
"--------------------------------------------------
Plugin 'fatih/vim-go'

"--------------------------------------------------
" Reference
"--------------------------------------------------
Plugin 'ref.vim'

"--------------------------------------------------
" Utility
"--------------------------------------------------
Plugin 'tyru/capture.vim'

call vundle#end()
filetype plugin indent on
syntax on

"--------------------------------------------------
" Gtags
"--------------------------------------------------
nnoremap [gtags] <Nop>
nmap ,r [gtags]
nmap [gtags] :Gtags -r<CR>

"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nnoremap <Space>t :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_sort = 0

"--------------------------------------------------
" CtrlP
"--------------------------------------------------
let g:ctrlp_map = '<c-x><c-b>'
let g:ctrlp_cmd = 'CtrlPMRU'

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

