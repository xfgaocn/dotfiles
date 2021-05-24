""""""
colorscheme simple
syntax on
set nu
set colorcolumn=81
set splitright
set splitbelow
set ttymouse=xterm2
set mouse=a
set autowrite
set updatetime=1000

" tab
set tabstop=4
set shiftwidth=4
set expandtab

" key map
nnoremap <silent> <F2> :NERDTreeFocus<CR>
nnoremap <silent> <F3> :TagbarOpen fj<CR>
noremap <C-K><C-F> :py3f /usr/share/clang/clang-format-6.0/clang-format.py<CR>
inoremap <C-K><C-F> <C-O>:py3f /usr/share/clang/clang-format-6.0/clang-format.py<CR>
noremap <F5> :Termdebug

" C/C++
set tags+=~/.vim/tags
set path+=include
packadd termdebug
let g:termdebug_wide=1
set cino=N-s  " not indent content of namespace

" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on

" NERDTree
let NERDTreeIgnore = [
    \ '\v(\.git|build|bin|venv|\.vscode)[[dir]]',
    \ '\v(\~|\.o|_test)$[[file]]',
    \ ]

" tagbar
let g:tagbar_iconchars = ['▸', '▾']

" ctrlp
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v(build|bin|venv|\.vscode)',
    \ 'file': '\v(\~|\.o|_test)$',
    \ }
