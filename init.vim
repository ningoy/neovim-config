set nocompatible " 不与Vi兼容 
filetype off " required 
set number " 显示行号
syntax on " 语法高亮
set t_Co=256 " 启用256色
set showmatch " 高亮显示
set showmode " 在底部显示，当前处于命令模式还是插入模式
set showcmd " 命令模式下，在底部显示，当前键入的指令
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
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
map <F5> :NERDTreeToggle<CR>
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
call plug#end()
