call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'

Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' } 
Plug 'chriskempson/base16-vim'
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

if has("syntax")
	syntax on
endif


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
set showcmd
set showmatch
set smartcase
set softtabstop=2
set shiftwidth=2
set shortmess+=c
set tabstop=2
set timeoutlen=100
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.docx,*.jpg,*.png,*.gif,*.pdf,*.class

let mapleader="\<Space>" 

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
so $HOME/.config/nvim/ctrlp.vim
so $HOME/.config/nvim/javascript.vim
so $HOME/.config/nvim/coc.vim
so $HOME/.config/nvim/which_key.vim
