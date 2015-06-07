" Vim color file
" Maintainer:   Thorsten Maerz <info@netztorte.de>
" Last Change:  2006 Dec 07
" grey on black
" optimized for TFT panels

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "torte"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=Black   guibg=White
 "highlight Normal guifg=white guibg=black
highlight Search     guifg=Black    guibg=Red   gui=bold
highlight Visual     guifg=#404040          gui=bold
highlight Cursor     guifg=Black    guibg=Green gui=bold
highlight Special    guifg=Red
highlight Comment    guifg=#808080
highlight StatusLine guifg=blue     guibg=white
highlight Statement  guifg=Blue           gui=NONE
highlight Type                      gui=NONE

" Console
highlight Normal     ctermfg=LightGrey  ctermbg=Black
highlight Search     ctermfg=Black  ctermbg=Red cterm=NONE
highlight Visual                    cterm=reverse
highlight Cursor     ctermfg=Black  ctermbg=Green   cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
hi Identifier	ctermfg=cyan guifg=#7f0000 cterm=none
hi PreProc	ctermfg=cyan guifg=#000099 cterm=none
hi Type	ctermfg=cyan guifg=Blue cterm=none
hi Special	ctermfg=cyan guifg=#000099 cterm=none
hi Statement	ctermfg=cyan guifg=#000099 cterm=none
hi StorageClass	ctermfg=cyan guifg=#000099 cterm=none

hi phpStringDouble	ctermfg=cyan guifg=#007f00 cterm=none
hi phpStringSingle	ctermfg=cyan guifg=#DF00FF cterm=none
hi phpIdentifier 	ctermfg=cyan guifg=#7f0000 cterm=none
hi phpVarSelector 	ctermfg=cyan guifg=#7f0000 cterm=none
hi phpFunctions 	ctermfg=cyan guifg=#000000 cterm=none

hi Boolean 	ctermfg=cyan guifg=#000099 gui=bold cterm=bold
hi Number	ctermfg=cyan guifg=#606000 cterm=none

hi NonText     guibg=bg  guifg=#CCCCCC gui=none
hi SpecialKey  guibg=bg  guifg=#CCCCCC gui=none

highlight StatusLine ctermfg=blue   ctermbg=white
highlight Statement  ctermfg=Yellow         cterm=NONE
highlight Type        guifg=#000099              cterm=NONE

" JavaScript
hi javaScriptFunction 	ctermfg=cyan guifg=#00007f gui=bold cterm=none
hi javaScriptIdentifier 	ctermfg=cyan guifg=#00007f gui=bold cterm=none
"hi javaScriptStringD	ctermfg=cyan guifg=#007f00 cterm=none
hi javaScriptStringD	ctermfg=cyan guifg=#DF00FF cterm=none



" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=Grey  ctermbg=Black   cterm=NONE  guifg=Grey80      guibg=Black   gui=NONE
    highlight Search  ctermfg=Black ctermbg=Red cterm=bold  guifg=Black       guibg=Red gui=bold
    highlight Visual  ctermfg=Black ctermbg=yellow  cterm=bold  guifg=#404040           gui=bold
    highlight Special ctermfg=LightBlue         cterm=NONE  guifg=LightBlue         gui=NONE
    highlight Comment ctermfg=Cyan          cterm=NONE  guifg=LightBlue         gui=NONE
  endif
endif

