" Make Vim no Vi-compatible
set nocompatible

" Enable syntax highlighting on a dark background
syntax on
set background=dark

" Alignment
match ColorColumn "\%81v."

" Indentation/Tab
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

" Incremental and highlight search
set incsearch
set hlsearch
 
" Allow buffers to be hidden
set hidden

" Default history value is 20
set history=100

" Press F12 before pasting text to avoid crazy indentation
set pastetoggle=<F12>

" Show matching brackets.
set showmatch

" Always show status bar
set laststatus=2 
set statusline=%<\ %{expand('%:h')}/%t%m%r%=%-14.(%l,%c%V%)\ %p%%
"set statusline=%<\ %F%m%r%=%-14.(%l,%c%V%)\ %p%%

" Enable wildmenu
set wildmenu
set wildignore+=*.o,*.x
set wildignore+=*.swp,*.bak
set wildignorecase
set wildmode=full

" Set backup
if has("vms")
    set nobackup
else
    set backup
    set backupdir=~/.vim/backup
    set directory=~/.vim/swap
endif

" Jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * 
    \ if line("'\"") > 1 && line("'\"") <= line("$") | 
    \    exe "normal! g'\"" | 
    \ endif
endif

" Load personal colorscheme
colo tshdarkbg

" Key mapping
let mapleader = ";"
inoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
nnoremap <Leader>b :buffer *
nnoremap <Leader>l :ls<CR>
nnoremap <S-k>     :bn<CR>
nnoremap <S-j>     :bp<CR>
nnoremap <Leader>k :bdelete<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <F5>      :e!<CR>

augroup Shebang
    autocmd BufNewFile *.sh 0put =\"#!/bin/bash\"|$
    autocmd BufNewFile *.py 0put =\"#!/usr/bin/python\"|$
augroup END

