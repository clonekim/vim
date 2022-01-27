call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'blueyed/vim-diminactive'
Plug 'svermeulen/vim-cutlass'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'liuchengxu/vim-which-key'
Plug 't9md/vim-choosewin'

call plug#end()
" =========================================================================
" =  단축키 지정                                                          =
" =  n(normal mode) 명령 모드                                             =
" =  v(visual, select mode) 비주얼 모드                                   =
" =  x(visual mode only) 비주얼 모드                                      =
" =  s(select mode only) 선택 모드                                        =
" =  i(insert mode) 편집 모드                                             =
" =  t(terminal mode) 편집 모드                                           =
" =  c(commnad-line) 모드                                                 =
" =  re(recursive) 맵핑                                                   =
" =  nore(no recursive) 맵핑                                              =
" =========================================================================

if has('syntax')
	syntax on
endif

if has('termguicolors')
  set termguicolors
endif

if has('nvim')
   set inccommand=nosplit	" nvim live %s substitute (실시간 강조)
endif


filetype plugin indent on
"colorschem jellybeans

set nocompatible
set autoindent
set bg=dark
set bufhidden=delete
set copyindent
"set colorcolumn=80
set clipboard=unnamedplus
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
set paste
set path+=**
set showcmd
set showmatch
set smartcase
set scrolloff=3
set softtabstop=2
set shiftwidth=2
set shortmess+=c
set tabstop=2
set timeoutlen=100
set viewoptions-=options
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.docx,*.jpg,*.png,*.gif,*.pdf,*.class


" terminal buffer 에 진입했을 때 mode 를 normal 에서 terminal 모드로 변경
" 또한 줄번호를 없앤다.
autocmd BufEnter term://* start " do nothing
autocmd TermOpen term://* execute ":set nonu"

" 버퍼를 저장할때 파일 이름이 .c, .h 와 같다면 ctags 명령어를 실행
" autocmd BufWritePost *.c,*.h silent! !ctags -R &

" 윈도우를 나갈 때 뷰를 저장하고,
autocmd BufWinLeave *.c,*.h mkview

" 윈도우에 들어갈 땐 뷰를 로드한다. (커서위치 저장)
" silent! 는 loadview 중 발생하는 에러를 억압(suppress) 한다.
autocmd BufWinEnter *.c,*.h silent! loadview

" 활성화된 버퍼만 라인 번호 표시 (단, 확장자는 .c 혹은 .h 일때만 동작)
autocmd BufEnter * if (&filetype == 'c' || &filetype == 'cpp')
	\| set number
\| endif

" 버퍼에서 나갈 땐 줄 번호를 지운다.
autocmd BufLeave * if (&filetype == 'c' || &filetype == 'cpp')
	\| set nonumber
\| endif




so $HOME/.config/nvim/mapping.vim
so $HOME/.config/nvim/airline.vim
so $HOME/.config/nvim/color.vim
so $HOME/.config/nvim/ctrlp.vim
so $HOME/.config/nvim/coc.vim
so $HOME/.config/nvim/javascript.vim
so $HOME/.config/nvim/nerdtree.vim
so $HOME/.config/nvim/vim-choosewin.vim
so $HOME/.config/nvim/vim-cutlass.vim
so $HOME/.config/nvim/which_key.vim


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
}
EOF

