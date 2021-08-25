let g:NERDTreeShowHidden=0
let g:NERDTreeChDirMode=2
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeWinPos = 'left'

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif



