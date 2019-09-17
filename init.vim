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
set cursorline " 光标所在的当前行高亮
set hlsearch " 搜索时，高亮显示搜索结果


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/nerdtree'
" 快捷键
nnoremap <silent> <F5> :NERDTreeToggle<CR>
" 显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" 快捷键
nnoremap <silent> <C-p> :Files<CR>

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Setup max line length
let g:pymode_options_max_line_length = 79
" Python version
let g:pymode_python = 'python'
" Enable PEP8 indentation
let g:pymode_indent = 1
" Enable pymode-motion
let g:pymode_motion = 1


Plug 'w0rp/ale'
" lint
let g:ale_linters = {
\    'javascript': ['eslint'],
\    'python':     ['autopep8'],
\}

Plug 'tomasr/molokai'
Plug 'bling/vim-airline'
Plug 'mhinz/vim-startify'
set viminfo='100,n$HOME/.vim/files/info/viminfo
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
" syntax
let g:javascript_plugin_jsdoc = 1

Plug 'nvie/vim-flake8'
Plug 'Yggdroot/indentLine'
Plug 'tell-k/vim-autopep8'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdcommenter'

" syntax complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/local/anaconda3/bin/python'
let g:python2_host_prog = '/usr/local/bin/python2'

call plug#end()
