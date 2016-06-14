"vimrc - Martijn van der Veen

set nocompatible

"indentation
set tabstop=4
set shiftwidth=4
set expandtab
set number
set autoindent
set smartindent

"layout and search
set hlsearch
set incsearch
set smartcase
"set foldmethod=syntax
set wildmenu
set ignorecase
syntax on

"divers
set mouse=a
set scrolloff=5 "autoscroll when approaching bottom/top
set shell=bash  "only used by vim

"shortcuts
command W w
command Q q
command WQ wq  " :X already bound
command Wq wq
nmap <C-p> :w<CR>
nmap <C-b> :bnext<CR>
nmap <C-e> :bprev<CR>
nmap \t :tabe 
nmap \s :sp 
nmap \v :vsp 
nmap \p :set paste!<CR>
nmap \n :setlocal number!<CR>
nmap \q :nohlsearch<CR>  " unhighlight search
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

"does not work due to terminal blocking c-s:
"nmap <C-s> :w<CR>
"imap <C-s> <Esc>:w<CR>



"plugins
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'ervandew/supertab' " annoying
"Plugin 'scrooloose/syntastic'
"call vundle#end()            " required
filetype plugin indent on    " required
autocmd FileType python setlocal completeopt-=preview

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

execute pathogen#infect()
let g:syntastic_python_python_exec='python3'
let g:syntastic_python_checkers=['py3kwarn', 'flake8'] 
"'compile', 'frosted', 'prospector', 'mypy', 'pyflakes', 'pylama', 'pylint']
let g:syntastic_python_flake8_args="--ignore=E113,E22,E26,E401,E501,E702,F40,W3"
"warning codes:
"http://pep8.readthedocs.org/en/latest/intro.html#error-codes
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"nmap ; :CtrlPBuffer<CR>


map <C-n> :NERDTreeToggle<CR>
