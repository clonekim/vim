# VIM

[오픈Tutorial Vim강의](https://opentutorials.org/course/730)  
[CoC](https://www.joinc.co.kr/w/man/12/neovim)

 
## 설치

1. [NeoVim](https://neovim.io/) 을 설치하거나
2. 리눅스에 이미 vim 설치 되었다면 업그레이드를 권장한다  
아래는 vim을 8.2 이상으로 업그레이드 하게 된다
- install 
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```
- uninstall
```
sudo apt remove vim
sudo add-apt-repository --remove ppa:jonathonf/vim
```
3. 윈도우즈의 경우 아래에서 다운로드  
https://www.vim.org/download.php


## 플러그인

요새는 [vim-plug](https://github.com/junegunn/vim-plug) 가 대세다.

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

~/.vimrc를 작성한다  
nvim의 경우 ~/.config/nvim/init.vim 이다  

### 기본적인 기능을 아래와 같이 작성한다

```
syntax on

set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set smarttab
set smartindent
set nu
set nowrap
set smartcase
set nohidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set showcmd
set showmatch
set laststatus=2
set encoding=UTF-8
set clipboard+=unnamedplus
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

highlight ColorColumn ctermbg=0 guibg=lightgrey
```

작성이 끝나면 명령모드에서  
:source % 라고 입력한다. 그럼 바로 적용이 될것이다.

### 플러그인을 설치해보자

문법은 begin\~end사이에 Plug [이름] 이렇게 작성한다.  
begin('~/.vim/plugged')라고 작성하여 플러그인의 설치경로를 줄수 있다.
```
call plug#begin('~/.vim/plugged')
...
call plug#end()
```

```
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dart-lang/dart-vim-plugin' 
Plug 'fatih/vim-go'
Plug 'nsf/gocode', {'rtp': 'nvim' }
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator' 
Plug 'vim-airline/vim-airline' 
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-gitgutter' 
Plug 'pangloss/vim-javascript'  
Plug 'leafgarland/typescript-vim' 
Plug 'maxmellon/vim-jsx-pretty'  
Plug 'tpope/vim-surround' 
Plug 'Yggdroot/indentLine'
Plug 'tmux-plugins/vim-tmux'  
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()


let mapleader = ","

nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q<CR> 

" fast save and close
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q<CR>
  
" insert blank line before current line without leaving insert mode
imap <leader>o <c-o><s-o>
  
" move up/down consider wrapped lines
nnoremap j gj
nnoremap k gk
  
" fix indentation
nnoremap <leader>i mzgg=G`z<CR>
  
" turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>
  
" move through grep results
nmap <silent> <right> :cnext<CR>
nmap <silent> <left> :cprev<CR>
 
" buffers
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>bd :bdelete<CR>
 
" navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <c-p> :FZF<CR>

 
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
    
"" Git    
noremap <Leader>gs :Gstatus<CR>    
noremap <Leader>ga :Gwrite<CR>    
noremap <Leader>gc :Gcommit<CR>    
noremap <Leader>gsh :Gpush<CR>    
noremap <Leader>gb :Gblame<CR>    
noremap <Leader>gr :Gremove<CR>    
noremap <Leader>gll :Gpull<CR>    
noremap <Leader>gd :Gvdiff<CR>    
    
map <C-n> :NERDTreeToggle<CR>    
let NERDTreeShowHidden=0

nnoremap <C-F> :NERDTreeFind<CR>    
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
```

## Ctags

1. ctags가 없으면 설치
```
sudo apt  install ctags
```

2. 해당 프로젝트에서 ctag 생성
```
find . -name '*.java' -exec ctags --append {} \;
```

