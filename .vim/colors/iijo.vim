set background=dark
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
:hi Comment      cterm=bold           ctermfg=238
:hi Constant     cterm=none           ctermfg=244
:hi Cursor       cterm=reverse
:hi CursorLine   cterm=none           ctermfg=none ctermbg=236
:hi Define       cterm=none           ctermfg=white 
:hi DiffAdd      cterm=bold           ctermfg=10 ctermbg=236
:hi DiffChange   cterm=none           ctermfg=34 ctermbg=236
:hi DiffDelete   cterm=none           ctermfg=236 ctermbg=236
:hi DiffText     cterm=bold           ctermfg=10 ctermbg=236
:hi Directory    cterm=none           ctermfg=245
:hi Error        cterm=bold           ctermfg=white
:hi ErrorMsg     cterm=bold           ctermfg=white
:hi Folded       cterm=none           ctermfg=white ctermbg=236
:hi FoldColumn   cterm=none           ctermfg=240 ctermbg=234
:hi Function     cterm=bold           ctermfg=white 
:hi Identifier   cterm=none           ctermfg=250
:hi Ignore       cterm=bold           ctermfg=white 
:hi Include      cterm=none           ctermfg=white 
:hi IncSearch    cterm=bold           ctermfg=154 ctermbg=none
:hi LineNr       cterm=none           ctermfg=white 
:hi MatchParen   cterm=bold           ctermfg=green ctermbg=none
:hi ModeMsg      cterm=none           ctermfg=white
:hi MoreMsg      cterm=none           ctermfg=white
:hi NonText      cterm=none           ctermfg=235 ctermbg=235
":hi Normal 
:hi Operator     cterm=none           ctermfg=252
:hi PreProc      cterm=none           ctermfg=white 
:hi Question     cterm=none           ctermfg=white
:hi Search       cterm=none           ctermfg=none ctermbg=233
:hi SignColumn   cterm=none           ctermfg=none ctermbg=233
:hi Special      cterm=none           ctermfg=246
:hi SpecialKey   cterm=none           ctermfg=green
:hi SpellErrors  cterm=bold           ctermfg=white
:hi StatusLine   cterm=none           ctermfg=0 ctermbg=250
:hi StatusLineNC cterm=none           ctermfg=0 ctermbg=245
:hi Statement    cterm=bold           ctermfg=white 
:hi String       cterm=none           ctermfg=240
:hi Structure    cterm=none           ctermfg=white 
:hi Title        cterm=none           ctermfg=green
:hi Todo         cterm=bold           ctermfg=white ctermbg=236
:hi Type         cterm=none           ctermfg=253
:hi Underlined   cterm=underline      ctermfg=white
:hi VertSplit    cterm=bold           ctermfg=234 ctermbg=234
:hi VisualNOS    cterm=none           ctermfg=green
:hi WarningMsg   cterm=none           ctermfg=white 
:hi Visual       cterm=reverse               
:hi WildMenu     cterm=none           ctermfg=white
