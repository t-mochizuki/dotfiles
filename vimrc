scriptencoding utf-8

augroup vimrc
  autocmd!
  autocmd FileType c,h,cpp setlocal shiftwidth=4 tabstop=4 softtabstop=4 dictionary=cpp.dict
  autocmd BufRead,BufNewFile *.sbt set filetype=scala
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

runtime! userautoload/core/*.vim
runtime! userautoload/plugins/*.vim
