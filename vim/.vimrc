" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
"filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
"
" Turn on that syntax highlighting
syntax on

"set noexpandtab
set shiftwidth=4
set tabstop=4
set et
setlocal cindent

"
" Why is this not a default
set hidden
"
" Don't update the display while executing macros
set lazyredraw
"
" At least let yourself know what mode you're in
set showmode
"
" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

"set relativenumber

