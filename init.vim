set nocompatible " 不与Vi兼容 
filetype off " required 
set number " 显示行号
syntax on " 语法高亮
set t_Co=256 " 启用256色
set showmatch " 高亮显示
set showmode " 在底部显示，当前处于命令模式还是插入模式
set showcmd " 命令模式下，在底部显示，当前键入的指令
"set mouse=a " 支持使用鼠标
colorscheme molokai
set background=dark
set encoding=utf-8 " 使用utf-8编码
set autoindent " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set tabstop=2 " 按下Tab键时，Vim显示的空格数
set expandtab " 自动将tab转为空格
set softtabstop=2 " Tab转为多少个空格
set cursorline " 光标所在的当前行高亮
set hlsearch " 搜索时，高亮显示搜索结果


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
let g:go_version_warning = 0
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'klen/python-mode'

Plug 'w0rp/ale'

Plug 'tomasr/molokai'

Plug 'bling/vim-airline'

Plug 'kien/ctrlp.vim'

Plug 'mhinz/vim-startify'

Plug 'mattn/emmet-vim'

Plug 'pangloss/vim-javascript'

Plug 'nvie/vim-flake8'

Plug 'Yggdroot/indentLine'

Plug 'tell-k/vim-autopep8'

Plug 'posva/vim-vue'

Plug 'Shougo/neocomplete'

Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'

Plug 'junegunn/gv.vim'

Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/nerdcommenter'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
