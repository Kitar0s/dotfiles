"Remaps the esc key 'jk'"
inoremap jk <ESC>

"Allows for navigation while in insert mode" 
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"Auto complete C comments" 
inoremap // /**/<Left><Left><Space>

"Changes the leader key from default to SPACE"
let mapleader=" "

"Some Leader Remaps" 
nnoremap <Leader>d dd

"Turning on syntax highlighting"
syntax on

"Sets default encoding and sets vim paste buffer to system buffer"
set encoding=utf-8
set clipboard=unamedplus
set number
set ttymouse=xterm2
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4

set smartindent
set smarttab

colo slate
