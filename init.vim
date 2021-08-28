call plug#begin('~/.config/nvim/plugged')

"if has('nvim')
"  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/defx.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'

Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' } 
Plug 'colepeters/spacemacs-theme.vim'
Plug 'morhetz/gruvbox'

Plug 'liuchengxu/vim-which-key'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'bagrat/vim-buffet'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': {-> fzf#install()} }
Plug 'junegunn/fzf.vim'


Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'fatih/vim-go'
Plug 'davidhalter/jedi-vim' 
Plug 'nvie/vim-flake8'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'majutsushi/tagbar'
Plug 'pechorin/any-jump.vim'

call plug#end()

if has("syntax")
	syntax on
endif

if (has("termguicolors"))
  set termguicolors
endif

colorscheme gruvbox

filetype plugin indent on

set nocompatible

set autoindent
set bg=dark
set bufhidden=delete
set copyindent
set clipboard=unnamed,unnamedplus
set cmdheight=1
set expandtab

set history=100
set hidden
set hlsearch
set incsearch
set ignorecase

set laststatus=2
set modifiable
set mouse=a
set number
set numberwidth=6
set nowrap
set nobackup
set noswapfile
set relativenumber

set signcolumn=yes
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 
set showcmd
set showmatch
set smartcase
set scrolloff=3
set softtabstop=2
set shiftwidth=2
set shortmess+=c
set tabstop=2
set timeoutlen=100
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.docx,*.jpg,*.png,*.gif,*.pdf,*.class

let mapleader="\<Space>" 

map tt :tabnew
map <M-Right> :tabn<CR>
imap <M-Right> <ESC>:tabn<CR>
map <M-Left> :tabp<CR>
imap <M-Left> <ESC>:tabp<CR>

nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>


so $HOME/.config/nvim/font.vim
so $HOME/.config/nvim/color.vim
so $HOME/.config/nvim/airline.vim
so $HOME/.config/nvim/buffet.vim
so $HOME/.config/nvim/nerdtree.vim
"so $HOME/.config/nvim/defx.vim
so $HOME/.config/nvim/ctrlp.vim
so $HOME/.config/nvim/javascript.vim
so $HOME/.config/nvim/coc.vim
so $HOME/.config/nvim/any-jump.vim
so $HOME/.config/nvim/which_key.vim

" https://www.gitmemory.com/issue/junegunn/fzf.vim/374/712076745
"command! -bang -nargs=* CustomBLines
"    \ call fzf#vim#grep(
"    \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')), 1,
"    \   fzf#vim#with_preview({'options': '--keep-right --delimiter : --nth 4.. --preview "bat -p --color always {}"'}, 'right:60%' ))
"nnoremap <leader>/ :CustomBLines<Cr>
"
"
"let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6 }}

