set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

let g:NERDTreeWinSize = 35
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeQuitOnOpen = 1
let NERDTreeWinPos = "left"
let g:NERDTreeQuitOnOpen = 0
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

colorscheme desert
syntax on
set wildmenu
set showcmd
set hlsearch
set incsearch
set cindent
set ts=4
set sw=4
set tags +=./tags,tags;
set nocompatible
set backspace=3
set nu
filetype plugin on
"filetype plugin indent on

nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>
imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>
nmap <C-f> :NERDTreeToggle<CR>
nmap <C-h> :nohl<CR>
nmap <CR> o<Esc>

"shortcut for c,cpp comment
autocmd FileType c,cpp vmap <buffer> <silent> <C-l> :norm i//<CR>
autocmd FileType c,cpp vmap <buffer> <silent> <C-k> :s/\/\///e<CR>:nohl<CR>
autocmd FileType c,cpp nmap <buffer> <silent> <C-l> 0i//<Esc>
autocmd FileType c,cpp nmap <buffer> <silent> <C-k> <s-v>:s/\/\///e<CR>:nohl<CR>
autocmd FileType c,cpp nmap <buffer> <silent> gp [{k<s-v>j%y<C-o><C-o>

"apply templates for .cpp and .hpp files
autocmd BufNewFile main.cpp silent 0r ~/templates/main.cpp | silent! $delete
autocmd BufNewFile main.c silent 0r ~/templates/main.cpp | silent! $delete
autocmd BufNewFile *.hpp silent 0r ~/templates/header.hpp | silent! $delete
autocmd BufNewFile *.hpp call SubstituteHeader()
autocmd BufNewFile *.h silent 0r ~/templates/header.hpp | silent! $delete
autocmd BufNewFile *.h call SubstituteHeader()

"A function that retrieves the filename and changes it to uppercase.
function! SubstituteHeader()
    let filename = expand('%:t:r')
    execute ':%s/HEADER/' . toupper(filename) . '/'
endfunction
