" Forget being compatible with good ol' vi
set nocompatible

execute pathogen#infect()

" Get that filetype stuff happening
"filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
"
" Turn on that syntax highlighting
syntax on

"colorscheme base16-gruvbox-light-soft
colorscheme base16-zenburn
let base16colorspace=256

"set noexpandtab
set shiftwidth=4
set tabstop=4
set et
setlocal cindent

" Why is this not a default
set hidden
set noreadonly
"
" Don't update the display while executing macros
set lazyredraw
"
" At least let yourself know what mode you're in
set showmode
"
" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'

set path+=**
set wildmode=longest:full
set wildmenu

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number
set cursorline

" Activate syntax highlighting.
syntax enable

" Disable parenthesis match highlighting.
let g:loaded_matchparen=1

"set colorcolumn=80
"highlight ColorColumn ctermbg=darkgray
"autocmd VimEnter * highlight Normal ctermbg=none

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" TagList options
let Tlist_WinWidth = 80
let Tlist_Close_On_Select = 1 "close taglist window once we selected something
let Tlist_Exit_OnlyWindow = 1 "if taglist window is the only window left, exit vim
let Tlist_Show_Menu = 1 "show Tags menu in gvim
let Tlist_Show_One_File = 1 "show tags of only one file
let Tlist_GainFocus_On_ToggleOpen = 1 "automatically switch to taglist window
let Tlist_Highlight_Tag_On_BufEnter = 1 "highlight current tag in taglist window
let Tlist_Process_File_Always = 1 "even without taglist window, create tags file, required for displaying tag in statusline
let Tlist_Use_Right_Window = 1 "display taglist window on the right
let Tlist_Display_Prototype = 1 "display full prototype instead of just function name
"let Tlist_Ctags_Cmd = /path/to/exuberant/ctags

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Airline theme
let g:airline_theme='base16'

" Fugitive
set diffopt+=vertical

" Unimpaired
" modified plugin use 'i' to change between buffers

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F5> :TlistToggle<CR>
nnoremap <F6> :TlistShowPrototype<CR>
" TagHighlight
nnoremap <F8> :UpdateTypesFile<CR>
nnoremap <F9> :set ignorecase! ignorecase?<CR>

"nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
"imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
:nnoremap <F3> "=strftime("%a %d %b %Y")<CR>Pa - Oleksiy Kyrylenko: <ESC>
:inoremap <F3> <C-R>=strftime("%a %d %b %Y")<CR> - Oleksiy Kyrylenko: 

"highlight MyTagListTagName guibg=lightblue ctermbg=lightblue
"highlight Search guibg=lightblue ctermbg=lightblue guifg=black ctermfg=black

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif
