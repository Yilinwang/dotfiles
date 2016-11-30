set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "nolife"

" gui
hi Cursor      guifg=Black    guibg=White
hi Normal      guifg=#eeeeee  guibg=#1c1c1c        
hi StatusLine  guifg=#ffff00  guibg=#222222  gui=NONE
hi CursorLine                 guibg=#005f87  gui=NONE 
hi Error                      guibg=#ff0000  
hi Todo        guifg=#000080  guibg=#c0c000  
hi MatchParen  guifg=#000080  guibg=#ffdf5f
hi LineNr      guifg=#ff0000                 gui=NONE 
hi Search                     guibg=#00ffff

hi Comment     guifg=#5f87d7

hi Constant    guifg=#af87ff                 gui=bold 
hi String      guifg=#ffaf00 
hi Character   guifg=#ffdf00 
hi Number      guifg=#af87ff
hi Float       guifg=#af5fff

hi Identifier  guifg=#afffff
hi Function    guifg=#afffff

hi Statement   guifg=#afd700                 gui=bold 

hi Type        guifg=#5fd7ff                 gui=bold

hi PreProc     guifg=#00ff5f

hi Special     guifg=#ffaf5f

hi Visual      guifg=#eeeeee  guibg=#af5f00

" cterm
hi Normal      ctermfg=255    ctermbg=NONE
hi StatusLine  ctermfg=226    ctermbg=235    cterm=NONE
hi CursorLine                 ctermbg=24     cterm=NONE
hi Error                      ctermbg=9
hi Todo        ctermfg=18     ctermbg=220
hi MatchParen  ctermfg=4      ctermbg=221
hi LineNr      ctermfg=9
hi Search                     ctermbg=14


hi Comment     ctermfg=68

hi Constant    ctermfg=153                   cterm=bold
hi String      ctermfg=214
hi Character   ctermfg=220
hi Number      ctermfg=141 
hi link Boolean Constant
hi Float       ctermfg=135

" any variable name
hi Identifier  ctermfg=159
hi Function    ctermfg=159

hi Statement   ctermfg=148                   cterm=bold
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Operator Function
hi link Exception Statement
hi link Keyword Statement

hi Type        ctermfg=81                    cterm=bold
hi link StorageClass Type
hi link Structure Statement
hi link Typedef Statement

hi PreProc     ctermfg=47
hi link Include PreProc
hi link PreCondit PreProc
hi Define      ctermfg=50
hi link Macro Define

hi Special     ctermfg=215
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Comment

hi Visual      ctermfg=255    ctermbg=130
hi link VisualNOS Visual
