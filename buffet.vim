let g:buffet_always_show_tabline = 1
let g:buffet_show_index = 1

function! g:BuffetSetCustomColors()
 hi! BuffetCurrentBuffer cterm=NONE ctermfg=15
 hi! BuffetModCurrentBuffer cterm=reverse ctermbg=15 ctermfg=1
 hi! BuffetBuffer cterm=NONE ctermbg=0 ctermfg=7
endfunction
