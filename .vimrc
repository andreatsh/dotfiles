" Make Vim no Vi-compatible
set nocompatible

" Exec pathogen
exec pathogen#infect('bundle/{}')

" Enable syntax highlighting on a dark background
syntax on
set background=dark

" Indentation/Tab 
set autoindent
set expandtab     
set shiftwidth=4   
set tabstop=4      
"set textwidth=79

" Incremental and highlight search
set incsearch
set hlsearch

" Default history value is 20
set history=100    

" Press F12 before pasting text to avoid crazy indentation
set pastetoggle=<F12>

" Show matching brackets.
set showmatch

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
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Load personal colorscheme
colo tshdarkbg

" Key mapping 
nnoremap ;b :buffer *
inoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

augroup Shebang
    autocmd BufNewFile *.sh 0put =\"#!/bin/bash\"|$
    autocmd BufNewFile *.py 0put =\"#!/usr/bin/python\"|$
augroup END


" Vimwiki
" Enable run multiple wikis 
let g:vimwiki_list = [
        \{'path': '~/tmp3/vimwiki.wiki'} 
    \]
    
augroup wiki
    au!
    au BufEnter *.wiki filetype indent plugin on 
    au BufEnter *.wiki set filetype=vimwiki
    au BufLeave *.wiki filetype indent plugin off
augroup END

