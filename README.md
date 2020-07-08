# VIM

## VI버전을 8.2 이상으로 업그레이드

### 우분투리눅스

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

### 윈도우즈

https://www.vim.org/download.php 에서 다운로드 한다


## 플러그인

요새는 [vim-plug](https://github.com/junegunn/vim-plug) 가 대세다.

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

~/.vimrc를 작성한다

### 기본적인 기능을 아래와 같이 작성한다

```
syntax on

set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set nu
set nowrap
set smartcase
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
Plug 'dart-lang/dart-vim-plugin' 
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
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


let mapleader = " "

nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q<CR> 
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

```


