" ----------------------------- Vundle Start -----------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" place plugin name here
" 需要Lua支持 Plugin 'shougo/neocomplete.vim'
Plugin 'The-NERD-tree'
call vundle#end()
filetype plugin indent on
" ----------------------------- Vundle End   -----------------------------
" ----------------------------- Custom Start -----------------------------

set nocompatible		"不要以vi兼容的模式运行
set number				"显示行号
set cursorline			"在当前行显示下划线
set tabstop=4			"1tab=4space
set softtabstop=4		"1tab=4space
set shiftwidth=4		"1tab=4space
set smartindent			"自动缩进
set autoindent 			"复制上一行的缩进
set smarttab			"智能tab
set expandtab			"展开tab为空格
set noshowmatch			"no匹配到括号后光标自动闪烁到匹配位置再返回
set hlsearch			"高亮匹配
set incsearch			"增量搜索：在输入的时候就高亮显示匹配条目
set encoding=utf-8		"使用utf-8编码
set showcmd             "显示输入命令
set ruler               "显示行号和列号（默认打开)
syntax enable
syntax on
set background=dark


" NERD setting
" 自动打开 nerdtree
autocmd StdinReadPre * let s:std_in=1
" wincmd p 的作用是打开vim默认光标位置在文件中
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | enew | endif
" 使用 vim 而不是 vim .
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 打开任意文件启动 nerdtree 我不需要
" autocmd VimEnter * NERDTree
" ----------------------------- Custom End   -----------------------------
