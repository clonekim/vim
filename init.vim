call plug#begin('~/.config/nvim/plugged')

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'kristijanhusak/defx-git'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'

Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' } 
Plug 'morhetz/gruvbox'

Plug 'liuchengxu/vim-which-key'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'bagrat/vim-buffet'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': {-> fzf#install()} }
Plug 'junegunn/fzf.vim'


Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'fatih/vim-go'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'majutsushi/tagbar'

call plug#end()

colorscheme jellybeans

if has("syntax")
  syntax on
endif

if has("gui_running")
  set guioptions=i
  if !has("mac")
    set guifont=DejaVu\ Sans\ Mono\ 9
  endif
endif

hi Normal guibg=NONE ctermbg=NONE
"highlight Normal ctermbg=black ctermfg=white
"highlight ColorColumn ctermbg=0 guibg=lightgrey

filetype on
filetype plugin on
filetype indent on

set nocompatible

set autoindent
set bg=dark
set bufhidden=delete
set copyindent
set cmdheight=2
set expandtab
set encoding=UTF-8

set history=100
set hidden
set hlsearch
set incsearch
set ignorecase

set laststatus=2
set mouse=a
set number
set numberwidth=6
set nowrap
set nobackup
set noswapfile 
set relativenumber

set signcolumn=yes
set showcmd
set showmatch
set smartcase
set softtabstop=2
set shiftwidth=2
set shortmess+=c
set tabstop=2
set timeoutlen=100
set updatetime=300
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.docx,*.jpg,*.png,*.gif,*.pdf,*.class

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


let mapleader="\<Space>" 

nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <leader><space> :nohlsearch<CR>

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>


" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-json', 'coc-tsserver', 'coc-emmet', 'coc-pyright' ]

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


"" Indentation rules
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType vue set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType jsx set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType tsx set tabstop=2|set shiftwidth=2|set expandtab sottabstop=2 smartindent
  autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType less set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType scss set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END



let g:airline_powerline_fonts = 1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_use_caching = 0

let g:which_key_map = {}
let g:which_key_map['name'] = 'Powered by VIM'

let g:which_key_map.t = {
      \ 'name' : 'Tools',
      \ 'n' : [':Defx-toggle', 'Defx Toggle'],
      \ 'o' : [':Files %:p:h', 'List files in current dir'],
      \ 'i' : ['mzgg=G`z'   , 'fix Indent'],
      \ 'r' : [':Rg', 'Regrep search'],
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

nmap <Leader>cc  <Plug>(coc-codeaction)
nmap <Leader>cf  <Plug>(coc-fix-current)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>cd <Plug>(coc-definition)
nmap <leader>ct <Plug>(coc-type-definition)
nmap <leader>ci <Plug>(coc-implementation)
nmap <leader>cr <Plug>(coc-references)
nmap <leader>cn <Plug>(coc-rename)


nnoremap <silent> <leader>ch :call <SID>show_document()<CR>

function! s:show_document()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
hi Pmenu ctermbg=black ctermfg=white

function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermfg=15
  hi! BuffetModCurrentBuffer cterm=reverse ctermbg=15 ctermfg=1
  hi! BuffetBuffer cterm=NONE ctermbg=0 ctermfg=7
endfunction

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
      \ 'name' : 'Options',
      \ 'm' : [':set mouse=a'             , 'mouse on'],
      \ 'M' : [':set mouse-=a'            , 'mouse off'],
      \ 'n' : [':set number'              , 'line number on'],
      \ 'N' : [':set nonumber'            , 'line number off'],
      \ 'r' : [':set relativenumber'      , 'relative-number on'],
      \ 'R' : [':set norelativenumber'    , 'relative-number off'],
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

let g:buffet_always_show_tabline = 1
let g:buffet_show_index = 1



nnoremap <C-n> :Defx -listed -resume  -columns=indent:mark:icon:icons:filename:indent:git:size:time  -buffer-name=tab`tabpagenr()` `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap <C-f> :Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>


call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \ 'root_icon': ' ',
      \ })

call defx#custom#column('mark', {
      \ 'readonly_icon': '',
      \ 'selected_icon': '✓',
      \ })

call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })

call defx#custom#column('time', {
      \ 'format': '  %Y/%m/%d  %H:%M:%S',
      \ })


" autocmd VimEnter * execute 'Defx'
autocmd BufWritePost * call defx#redraw()
autocmd BufEnter * call defx#redraw()

autocmd FileType defx call s:defx_my_settings()
  function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
      \ defx#is_binary() ?
      \ defx#do_action('execute_system') :
      \ defx#do_action('open')

  nnoremap <silent><buffer><expr> E     defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> l     
      \ defx#is_binary() ?
      \ defx#do_action('execute_system') :
      \ defx#do_action('open')

  nnoremap <silent><buffer><expr> o     defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> q     defx#do_action('quit')
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> ~     defx#do_action('cd')
  nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
  nnoremap <silent><buffer><expr> h     defx#do_action('cd', ['..'])

  nnoremap <silent><buffer><expr><nowait> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *      defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j  line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k  line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-c>  defx#do_action('clear_select_all')
  nnoremap <silent><buffer><expr> <C-l>  defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>  defx#do_action('print')

  nnoremap <silent><buffer><expr> K     defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N     defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> D     defx#do_action('remove')
  nnoremap <silent><buffer><expr> r     defx#do_action('rename')
  nnoremap <silent><buffer><expr> !     defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> S     defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> >     defx#do_action('resize', defx#get_context().winwidth + 10)
  nnoremap <silent><buffer><expr> <     defx#do_action('resize', defx#get_context().winwidth - 10)
  nnoremap <silent><buffer><expr><nowait> c  defx#do_action('copy')
  nnoremap <silent><buffer><expr><nowait> m  defx#do_action('move')
  nnoremap <silent><buffer><expr><nowait> p  defx#do_action('paste')

endfunction

