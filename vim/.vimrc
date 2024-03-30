" 设置 -----------------------------------------
set nocompatible                " 去掉对vi的兼容

set mouse=a                     " 支持鼠标点击

set tabstop=4                   " 设置 Tab 键显示宽度为 4 个空格
set shiftwidth=4                " 设置缩进宽度为 4 个空格
set wrap                        " 启用自动换行
set linebreak                   " 在单词内换行
set autoindent                  " 启用自动缩进
set smartindent                 " 智能缩进
set fileformat=unix             " 以unix格式保存文件
set selection=inclusive         " 选择文本时,光标位置被选择

set swapfile                    " 创建swap文件
set directory=.                 " 在当前目录下创建swap文件

filetype on                     " 开启文件类型检测
filetype plugin on              " 开启插件的支持
filetype indent on              " 开启文件类型相应的缩进规则

set ignorecase                  " /?忽略大小写
set smartcase                   " 基上,智能忽略
set incsearch                   " 递进检索

set clipboard=unnamed           " yank共享到系统剪贴板

set backspace=indent,eol,start  " 启用bs i模式下删除

" set autoread                    " 文件在vim外修改过自动重新载入
" au CursorHold,CursorHoldI * checktime      " 若加载不及时, 可手动:e
" --------------------------------------------- 设置


" ui ------------------------------------------
set encoding=utf-8              " 正常显示中文

set showcmd                     " 显示N模式下的输入命令
set laststatus=2

set number                      " 显示行号
set rnu                         " 显示相对行号

syntax enable                   " 语法高亮
hi MatchParen ctermbg=darkgreen " 括号高亮色

" --------------------------------------------- ui


" mapping ----------------------------------------
" 之后不要添加注释等字符, 会参与映射
inoremap <expr> jk "<Esc>l"
inoremap <expr> <Esc> "<Esc>l"
nnoremap . .l
inoremap <C-l> <Esc>:normal! zzi
nnoremap <BS> <Nop>

inoremap <C-u> <Esc>d0xi
inoremap <C-k> <Esc>d$a

nnoremap <C-a> 0
inoremap <C-a> <C-o>0
inoremap <C-e> <C-o>$
nnoremap <C-e> $
vnoremap <C-a> ^
vnoremap <C-e> g_

" 设置空格键映射为<leader>
let mapleader = "\<Space>"

" 设置普通模式下的空格键映射为<leader>
nnoremap <Space> <Nop>

nnoremap <Leader>r :source $MYVIMRC<CR>
" --------------------------------------------- mapping


" plug ----------------------------------------
" --------------------------------------------- plug

