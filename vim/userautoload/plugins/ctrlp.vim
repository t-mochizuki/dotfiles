let g:ctrlp_map = ''
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

nnoremap <silent> <C-F> <Nop>
nnoremap <silent> <C-F><C-F> :CtrlP<CR>
nnoremap <silent> <C-F><C-B> :CtrlPBuffer<CR>
nnoremap <silent> <C-F><C-H> :CtrlPMRUFiles<CR>
