set number
set relativenumber

let tabstop=2
let softtabstop=2
let shiftwidth=2

set nohlsearch
set incsearch
set showcmd

let scrolloff=8

let mapleader=" "

" Netrw
let g:netrw_banner=0 " disable banner
let g:netrw_liststyle=3 " tree view

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
