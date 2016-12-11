" set nocompatible              " be iMproved, required
set showcmd 	"show cmd
set history=1000  "history store size

"set nu              " 显示行号
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)


" 编码设置
" set fileencodings=ucs-bom,utf-8,gbk
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

