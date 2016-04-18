set nocompatible              " be iMproved, required
filetype off                  " required
set showcmd 			" showcmd 
set ruler  "ruler
" set incsearch " incsearch
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif


filetype plugin indent on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://github.com/wincent/command-t.git'
Plugin 'git://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'git://github.com/sjl/gundo.vim.git'
Plugin 'git://github.com/ervandew/supertab.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nu              
syntax on  	   
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   
set laststatus=1   

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" leader from here
let mapleader=","

" nerdtree settings
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <silent> <F2> :NERDTreeToggle<CR>
map <silent> <F3> :NERDTreeFind<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctags
" nnoremap <leader>m :!ctags -R --c++-kinds=+p --fields=+ias --extra=+q.<CR>
nnoremap <leader>fs :set fdm=syntax<CR>
nnoremap <leader>fi :set fdm=indent<CR>
nnoremap <leader>fe :set fdm=expr<CR>
nnoremap <leader>fm :set fdm=marker<CR>
nnoremap <leader>fd :set fdm=diff<CR>

" Gundo 
nnoremap <F5> :GundoToggle<CR>

nnoremap <leader>sp :call Push()<CR>

set fileencodings=ucs-bom,utf-8,gbk

nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>
nmap <F6> bi{<Esc>ea}<Esc> 
