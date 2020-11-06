execute pathogen#infect()
syntax on 


set nocompatible 

set noerrorbells 
set confirm 
set autowriteall 
set hidden 
set wildmenu 
set showcmd
set hlsearchh 




" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
set ruler

"Always display the status line, even if only one window is displayed
set laststatus=2

 
set visualbell


"Reset the terminal code for visual bell
set t_vb=

"Enable mouse use for all modes
set mouse=a

"Set the command window height to 2 lines
set cmdheight=2

"Display relative line numbers on the left
set relativenumber 

"Timeout of keycodes, but never timeout of mappings
set notimeout ttimeout ttimeoutlen=200 

" View the changes you have made to a buffer since the file was loaded
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis


"Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

set undodir=~/.vim/undodir
set undofile
set incsearch 


"-----------------------------------------------------------
"-----------------| Indentation Settings |------------------

filetype plugin indent on

"Allow backspacing over autoindent, line breaks and start of insert action 
set backspace=indent,eol, start 

set smartindent
set tabstop=4 softtabstop=4
set shiftwidth = 4
set softtabstop =4
set expandtab 

"----------------------------------------------------------
"-----------------| Keystroke Mappings |-------------------

nnoremap <C-L> :nohl<CR><C-L>
vnoremap <Leader> s : sort<CR>
nmap <leader> ch <Plug>(cow-close-h)
nmap <leader> cj <Plug>(cow-close-j)
nmap <leader> ck <Plug>(cow-close-k)
nmap <leader> cl <Plug>(cow-close-l)

vnoremap < <gv
vnoremap > >gv

map Y y$

"Remap jj to escape 
imap jj <esc> 

"Save fast moves 
nmap <leader>w :w!<cr>
nnoremap <C-L> : nohl<CR><C-L>

"
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Load current text in buffer into Google Chrome
nmap ,c :!open -a Google\ Chrome<cr>
"----------------------------------------------------------
"-----------------| Color & Pizzazz |----------------------
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=blue

set t_Co =256
set encoding=utf-8
set rtp+=~/.vim/bundle/cow.vim
"----------------------------------------------------------
