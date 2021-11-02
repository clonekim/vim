let g:NERDTreeShowHidden=0
let g:NERDTreeChDirMode=2
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeWinPos = 'left'

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
 autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"autocmd BufEnter  * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif
"
"
"function! s:CloseIfOnlyControlWinLeft()
"  if winnr("$") != 1
"    return
"  endif
"  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
"        \ || &buftype == 'quickfix'
"    q
"  endif
"endfunction
"
"augroup CloseIfOnlyControlWinLeft
"  au!
"  au BufEnter * call s:CloseIfOnlyControlWinLeft()
"augroup END
"
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif


