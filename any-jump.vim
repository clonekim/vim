" Normal mode: Jump to definition under cursor
" nnoremap <leader>j :AnyJump<CR>

" Visual mode: jump to selected text in visual mode
" xnoremap <leader>j :AnyJumpVisual<CR>

" Normal mode: open previous opened file (after jump)
" nnoremap <leader>ab :AnyJumpBack<CR>

" Normal mode: open last closed search window again
" nnoremap <leader>al :AnyJumpLastResults<CR>

let g:any_jump_disable_default_keybindings = 1
let g:any_jump_ignored_files = ['node_modules', '*.tmp', '*.temp']
