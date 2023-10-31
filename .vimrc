set nocompatible
set number
set relativenumber
set autoread

let tabstop=2
set shiftwidth=0   " If 0, then uses value of 'tabstop'
set softtabstop=-1 " If negative, then uses 'shiftwidth' (which can use 'tabstop')et shiftwidth=2

set nohlsearch
set incsearch
set showcmd

let scrolloff=8

let mapleader=" "

"" map - map a new key pattern to an existing key pattern
"" noremap - ^ no recursion, new key patterns are only matched with standard vim motions
"" nnoremap - ^ new key pattern is only valid for normal mode

"" concat current line with next but don't move cursor
nnoremap J mzJ`z

"" jump up/down but cursor stays in middle
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

"" search terms stay in middle
nnoremap n nzz
nnoremap N Nzz

"" paste over selection without adding replaced text to yank buffer
xnoremap <leader>p "_dP

"" yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

"" delete text without adding to yank buffer
nnoremap <leader>d "_d
vnoremap <leader>d "_d

"" concat current line with next but don't move cursor
nnoremap J mzJ`z

nnoremap <silent> <space> <nop>
vnoremap <silent> <space> <nop>

"ideaVim ignore
"" register destination of explicit count j/k movements onto the jumplist
"" and for single j/k movements, allow ease of navigation through wrapped text
nnoremap <expr> k (v:count > 1 ? "km'" : "gk")
nnoremap <expr> j (v:count > 1 ? "jm'" : "gj")
"ideaVim ignore end
