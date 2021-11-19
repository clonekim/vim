let g:NERDTreeShowHidden=0
let g:NERDTreeChDirMode=2
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeWinPos = 'left'
"let g:NERDTreeQuitOnOpen=0
"let NERDTreeCustomOpenArgs = {'file':{'keepopen': 0}}

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd StdinReadPre * let s:std_in=1
"autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif
autocmd FileType nerdtree noremap <buffer> <Space> <nop>
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>
