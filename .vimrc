syntax on
color simple-dark
set number
set shell=/bin/zsh
set backspace=2
set nocompatible             
set term=screen-256color
filetype off 

" Rust autocomplete
set hidden
let g:racer_cmd="~/.cargo/bin/racer"
let g:racer_experimental_completer=1
let g:racer_insert_paren=1
let g:rustfmt_autosave=1

augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle 
Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'
" Plugin for Rust.

Plugin 'cespare/vim-toml'
" TOML syntax highlighting. 

Plugin 'racer-rust/vim-racer'
" Rust autocomplete.

call vundle#end() 
filetype plugin indent on
