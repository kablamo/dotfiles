set background=dark
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
hi Comment      cterm=none    ctermfg=244
hi Constant     cterm=none    ctermfg=244
hi Cursor       cterm=reverse
hi CursorLine   cterm=none    ctermfg=none  ctermbg=none
hi CursorLineNr cterm=none    ctermfg=236   ctermbg=233
hi CursorColumn cterm=none    ctermfg=none  ctermbg=none
hi Define       cterm=none    ctermfg=white
hi DiffAdd      cterm=bold    ctermfg=221   ctermbg=none
hi DiffChange   cterm=none    ctermfg=none  ctermbg=none
hi DiffDelete   cterm=none    ctermfg=236   ctermbg=none
hi DiffText     cterm=bold    ctermfg=221   ctermbg=none
hi Directory    cterm=none    ctermfg=245
hi Error        cterm=bold    ctermfg=white
hi ErrorMsg     cterm=bold    ctermfg=white
hi FoldColumn   cterm=none    ctermfg=240   ctermbg=232
hi Folded       cterm=none    ctermfg=240   ctermbg=236
hi Function     cterm=bold    ctermfg=white
hi Identifier   cterm=none    ctermfg=250
hi Ignore       cterm=bold    ctermfg=white
hi IncSearch    cterm=bold    ctermfg=154   ctermbg=236
hi Include      cterm=none    ctermfg=white
hi LineNr       cterm=none    ctermfg=236   ctermbg=233
hi MatchParen   cterm=reverse ctermfg=240   ctermbg=none
hi ModeMsg      cterm=none    ctermfg=white
hi MoreMsg      cterm=none    ctermfg=white
hi NonText      cterm=none    ctermfg=235   ctermbg=235
"hi Normal      ctermbg=235
hi Operator     cterm=none    ctermfg=252
hi Pmenu        cterm=none    ctermfg=255   ctermbg=236
hi PmenuSel     cterm=none    ctermfg=22    ctermbg=10
"hi PmenuSbar   cterm=none
"hi PmenuThumb  cterm=none
hi PreProc      cterm=none    ctermfg=white
hi Question     cterm=none    ctermfg=white
hi Search       cterm=none    ctermfg=none  ctermbg=236
hi SignColumn   cterm=none    ctermfg=none  ctermbg=233
hi Special      cterm=none    ctermfg=238
hi SpecialKey   cterm=none    ctermfg=green
hi SpellErrors  cterm=bold    ctermfg=white
hi Statement    cterm=bold    ctermfg=white
hi StatusLine   cterm=none    ctermfg=0     ctermbg=250
hi StatusLineNC cterm=none    ctermfg=0     ctermbg=245
hi String       cterm=none    ctermfg=240
hi Structure    cterm=none    ctermfg=white
hi Title        cterm=none    ctermfg=241
hi Todo         cterm=bold    ctermfg=white ctermbg=236
hi Type         cterm=none    ctermfg=253
hi Underlined   cterm=none    ctermfg=white
hi VertSplit    cterm=bold    ctermfg=233   ctermbg=233
hi Visual       cterm=none    ctermfg=white ctermbg=239
hi VisualNOS    cterm=none    ctermfg=green
hi WarningMsg   cterm=none    ctermfg=white
hi WildMenu     cterm=none    ctermfg=white
