set background=dark
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
"hi Normal 
"hi Cursor
"hi VertSplit 
hi Folded       cterm=none           ctermfg=white
hi FoldColumn   cterm=none           ctermfg=white
hi IncSearch    cterm=none           ctermfg=white
hi ModeMsg      cterm=none           ctermfg=white
hi MoreMsg      cterm=none           ctermfg=white
hi NonText      cterm=bold           ctermfg=white
hi Question     cterm=none           ctermfg=white
hi Search       cterm=none           ctermfg=white
hi SpecialKey   cterm=none           ctermfg=white
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi Title        cterm=bold           ctermfg=white
hi Statement    cterm=bold           ctermfg=white 
hi Visual       cterm=reverse               
hi WarningMsg   cterm=none           ctermfg=white 
hi String       cterm=none           ctermfg=240
hi Comment      cterm=bold           ctermfg=238
hi Constant     cterm=none           ctermfg=244
hi Special      cterm=none           ctermfg=246
hi Identifier   cterm=none           ctermfg=250
hi Include      cterm=none           ctermfg=white 
hi LineNr       cterm=none           ctermfg=236 ctermbg=233
hi PreProc      cterm=none           ctermfg=white 
hi Operator     cterm=none           ctermfg=252
hi Define       cterm=none           ctermfg=white 
hi Type         cterm=bold           ctermfg=253
hi Function     cterm=bold           ctermfg=white 
hi Structure    cterm=none           ctermfg=white 
hi LineNr       cterm=none           ctermfg=white 
hi Ignore       cterm=bold           ctermfg=white 
hi MatchParen   cterm=bold           ctermfg=202 ctermbg=none
"hi Todo                                     
hi Directory    cterm=bold           ctermfg=white 
hi ErrorMsg     cterm=bold           ctermfg=white
hi VisualNOS    cterm=bold,underline
hi WildMenu     cterm=none           ctermfg=white
hi DiffAdd      cterm=none           ctermbg=white
hi DiffChange   cterm=none           ctermbg=white
hi DiffDelete   cterm=bold           ctermfg=white
hi DiffText     cterm=bold           ctermbg=white
hi Underlined   cterm=underline      ctermfg=white
hi Error        cterm=bold           ctermfg=white
hi SpellErrors  cterm=bold           ctermfg=white
