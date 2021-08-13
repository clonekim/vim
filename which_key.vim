
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}
let g:which_key_map['name'] = 'Powered by VIM'

let g:which_key_map.t = {
  \ 'name' : 'Tools',
  \ 'n' : [':NERDTreeToggle', 'NERDTreeToggle'],
  \ 'f' : [':NERDTreeFind'	, 'NERDTreeFind'],
  \ 'i' : ['mzgg=G`z'   , 'fix Indent'],
  \ 't' : [':term', 'Open Terminal'],
  \ }



let g:which_key_map.b = {
  \ 'name' : 'Buffers',
  \ '1' : ['<Plug>BuffetSwitch(1)' , 'Switch to 1'],
  \ '2' : ['<Plug>BuffetSwitch(2)' , 'Switch to 2'],
  \ '3' : ['<Plug>BuffetSwitch(3)' , 'Switch to 3'],
  \ '4' : ['<Plug>BuffetSwitch(4)' , 'Switch to 4'],
  \ '5' : ['<Plug>BuffetSwitch(5)' , 'Switch to 5'],
  \ '6' : ['<Plug>BuffetSwitch(6)' , 'Switch to 6'],
  \ '7' : ['<Plug>BuffetSwitch(7)' , 'Switch to 7'],
  \ '8' : ['<Plug>BuffetSwitch(8)' , 'Switch to 8'],
  \ '9' : ['<Plug>BuffetSwitch(9)' , 'Switch to 9'],
  \ '0' : ['<Plug>BuffetSwitch(10)' , 'Switch to 10'],
  \ 'n' : [':enew' , 'New'],
  \ 'r' : [':e!' , 'Revert'],
  \ 'q' : [':q!' , 'Close'],
  \ 'x' : [':x' , 'Exit'],
  \ 'w' : [':w' , 'Save'],
  \ 'W' : [':wq' , 'Save & Close'],
  \ 'k' : [':bdelete' , 'Kill this buffer'],
  \ 'l' : ['Buffers' , 'List'],
  \ }


let g:which_key_map.c = {
  \ 'name' : 'CoC',
  \ 'e' : [':CocCommand eslint.showOutputChannel' , 'accept eslint'],
  \ }


let g:which_key_map.p = 'which_key_ignore'

let g:which_key_map.c.c = 'coc-codeaction'
let g:which_key_map.c.d = 'coc-definition'
let g:which_key_map.c.f = 'coc-fix-current'
let g:which_key_map.c.i = 'coc-implementation'
let g:which_key_map.c.h = 'show-document'
let g:which_key_map.c.n = 'coc-rename'
let g:which_key_map.c.r = 'coc-references'
let g:which_key_map.c.t = 'coc-type-definition'

let g:which_key_map.f = {
  \ 'name' : 'File',
  \ }


let g:which_key_map.g = {
  \ 'name' : 'Git',
  \ 's' : [':Git'	  , 'status'],
  \ 'l' : [':Gclog'	, 'log'],
  \ 'c' : [':Gcommit', 'commit'],
  \ 'd' : [':Gdiff', 'dff'],
  \ 'p' : [':Gpush'	, 'push'],
  \ }


let g:which_key_map.o = {
  \ 'name' : 'Vim Options',
  \ 'm' : [':set mouse=a'             , 'mouse on'],
  \ 'M' : [':set mouse-=a'            , 'mouse off'],
  \ 'n' : [':set number!'              , 'Toggle Line number'],
  \ 'r' : [':set relativenumber!'      , 'relative-number on'],
  \ }


let g:which_key_map.s = {
  \ 'name' : 'Search',
  \ 'f' : [':Files %:p:h', 'Listing files'],
  \ 'r' : [':Rg', 'Regrep search'],
  \ }

let g:which_key_map.t = {
  \ 'name' : 'Theme',
  \ 'j' : [':colorscheme jellybeans'   , 'jellybeans-themes'],
  \ 'g' : [':colorscheme gruvbox'      , 'gruvbox-themes'],
  \ }

let g:which_key_map.v = {
  \ 'name' : 'Vim Menu',
  \ 'q' : [':qa',         'quit'],
  \ 'Q' : [':qa!',         'Quit'],
  \ 'R' : [':source $MYVIMRC', 'reload vimrc'],
  \ 'e' : [':e $MYVIMRC', 'edit-vimrc'],
  \ 'm' : [':Maps', 'show maps'],
  \ }


let g:which_key_map.w = {
  \ 'name' : 'Windows',
  \ '-' : ['<C-W>s'						, 'split-window-below'],
  \ '+' : ['<C-W>v'						, 'split-window-right'],
  \ '=' : ['<C-W>='						, 'balance-window'],
  \ 'c' : ['<C-W>c'						, 'close window'],
  \ 'h' : ['<C-W>h'						, 'window-left'],
  \ 'j' : ['<C-W>j'						, 'window-bottom'],
  \ 'k' : ['<C-W>k'						, 'window-top'],
  \ 'l' : ['<C-W>l'						, 'window-right'],
  \ '0' : ['<C-W>o'						, 'close all but 1 left'],
  \ '2' : ['<C-W>v'						, 'layout-double-columns'],
  \ 't' : ['<C-W>t'						, 'to-top-most'],
  \ 'b' : ['<C-W>b'						, 'to-bottom-most'],
  \ 'r' : ['<C-W>r'						, 'swap window-nearby'],
  \ 'w' : ['<C-W>w'						, 'other-window'],
  \ 'H' : ['<C-W>H'						, 'expand-window-left'],
  \ 'J' : ['<C-W>J'						, 'expand-window-bottom'],
  \ 'K' : ['<C-W>K'						, 'expand-window-top'],
  \ 'L' : ['<C-W>L'						, 'expand-window-right'],
  \ }

