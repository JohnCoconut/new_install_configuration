set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'auto-pairs-gentle'
Plugin 'junegunn/vim-easy-align'
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'pboettch/vim-cmake-syntax'
Plugin 'kopischke/vim-fetch'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'autozimu/LanguageClient-neovim'
" Plugin 'udalov/kotlin-vim'
" Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required

"============================================================================"

filetype plugin indent on    " required
syntax enable
set background=dark
colorscheme solarized 
set encoding=utf-8
set nu

" vim airline
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='powerlineish'

let g:ycm_confirm_extra_conf=0
let g:ycm_server_python_interpreter='/usr/bin/python3'

" Language client settings
" let g:LanguageClient_serverCommands = { 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],  'cpp' : ['clangd'],'c' : ['clangd']}

autocmd FileType d setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType lua setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType go setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType cs setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=4 tabstop=4
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType typescript setlocal shiftwidth=4 tabstop=4
autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType groovy setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType kotlin setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd BufNewFile,BufRead *.ccg   set syntax=cpp
autocmd BufNewFile,BufRead *.hg   set syntax=cpp

" do not indent c++ public or private key word
set cindent
set cino+=g0

au BufRead * if search('\M-*- C++ -*-', 'n', 1) | setlocal ft=cpp | endif
au BufRead,BufNewFile *.ml,*.mli compiler ocaml

" ignore java .class file
set wildignore+=*.class,*.pdf,*.jpg,*png

let g:ycm_filter_diagnostics = {
  \ "cpp": {
  \      "regex": [ "stream_iterator.h"],
  \      "level": "error",
  \    }
  \ }
