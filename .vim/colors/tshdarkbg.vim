"
" Author: Andrea Miglietta <andrea.miglietta92@gmail.com>
"

hi clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name = "tshdarkbg"


" highlight group
" see :help highlight-groups
hi Comment      ctermfg=14     ctermbg=NONE   cterm=NONE        
"hi DiffAdd      ctermfg=0      ctermbg=10     term=NONE 
"hi DiffChange   ctermfg=0      ctermbg=11     term=NONE 
"hi DiffDelete   ctermfg=0      ctermbg=9      term=NONE 
"hi DiffText     ctermfg=0      ctermbg=3      term=NONE 
hi ErrorMsg     ctermfg=7      ctermbg=9      cterm=bold
hi IncSearch    ctermfg=9      ctermbg=11     cterm=NONE        
hi Normal       ctermfg=7      ctermbg=0      cterm=NONE        
hi Search       ctermfg=11      ctermbg=9      cterm=bold
hi Visual       ctermfg=NONE   ctermbg=240    cterm=bold     
hi WildMenu     ctermfg=0      ctermbg=11     cterm=bold        

" syntax highlighting for group-name
" see :help group-name
hi Constant     ctermfg=13     ctermbg=NONE
hi Error        ctermfg=7      ctermbg=9
hi Preproc      ctermfg=140    ctermbg=NONE
hi Special      ctermfg=9      ctermbg=NONE
hi Statement    ctermfg=130    ctermbg=NONE
hi Type         ctermfg=40     ctermbg=NONE
hi Todo         ctermfg=11     ctermbg=8      cterm=bold

