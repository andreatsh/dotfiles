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
hi Colorcolumn                 ctermbg=160
hi Comment      ctermfg=14     ctermbg=NONE   cterm=NONE        
hi DiffAdd      ctermfg=40     ctermbg=240    cterm=bold 
hi DiffChange   ctermfg=208    ctermbg=240    cterm=bold
hi DiffDelete   ctermfg=9      ctermbg=240    cterm=bold
hi DiffText     ctermfg=9      ctermbg=240    cterm=bold 
hi ErrorMsg     ctermfg=7      ctermbg=9      cterm=bold
hi IncSearch    ctermfg=9      ctermbg=11     cterm=NONE        
hi Normal       ctermfg=7      ctermbg=NONE   cterm=NONE        
hi Search       ctermfg=11     ctermbg=9      cterm=bold
hi StatusLine   ctermfg=15     ctermbg=25     cterm=bold        
hi Visual       ctermfg=NONE   ctermbg=240    cterm=bold     
hi WildMenu     ctermfg=255    ctermbg=75     cterm=bold        

" syntax highlighting for group-name
" see :help group-name
"hi Constant     ctermfg=13     ctermbg=NONE
"hi Error        ctermfg=7      ctermbg=9
"hi Preproc      ctermfg=177    ctermbg=NONE
"hi Special      ctermfg=9      ctermbg=NONE
"hi Statement    ctermfg=208    ctermbg=NONE
"hi Type         ctermfg=40     ctermbg=NONE
hi Todo         ctermfg=11     ctermbg=8      cterm=bold

