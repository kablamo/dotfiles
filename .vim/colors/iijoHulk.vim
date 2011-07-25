set background=dark
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
:hi Comment      cterm=bold           ctermfg=241
:hi Constant     cterm=none           ctermfg=91
:hi Cursor       cterm=reverse
:hi Define       cterm=none           ctermfg=red
:hi DiffAdd      cterm=none           ctermbg=4
:hi DiffChange   cterm=none           ctermbg=5
:hi DiffDelete   cterm=bold           ctermfg=4 ctermbg=6
:hi DiffText     cterm=bold           ctermbg=1
:hi Directory    cterm=none           ctermfg=245
:hi Error        cterm=bold           ctermfg=white ctermbg=darkred
:hi ErrorMsg     cterm=bold           ctermfg=white ctermbg=red
:hi FoldColumn   cterm=none           ctermfg=green ctermbg=7
:hi Folded       cterm=none           ctermfg=161 ctermbg=none
:hi Function     cterm=bold           ctermfg=green
:hi Identifier   cterm=none           ctermfg=141
:hi Ignore       cterm=bold           ctermfg=253
:hi IncSearch    cterm=none           ctermfg=green ctermbg=none
:hi Include      cterm=none           ctermfg=red
:hi LineNr       cterm=none           ctermfg=253
:hi MatchParen   cterm=bold           ctermfg=green ctermbg=none
:hi ModeMsg      cterm=none           ctermfg=green
:hi MoreMsg      cterm=none           ctermfg=darkgreen
:hi NonText      cterm=bold           ctermfg=238
":hi Normal 
:hi Operator     cterm=none           ctermfg=253
:hi PreProc      cterm=none           ctermfg=lightgray
:hi Question     cterm=none           ctermfg=green
:hi Search       cterm=none           ctermfg=green ctermbg=none
:hi Special      cterm=none           ctermfg=201
:hi SpecialKey   cterm=none           ctermfg=darkgreen
:hi SpellErrors  cterm=bold           ctermfg=7 ctermbg=1
:hi Statement    cterm=bold           ctermfg=128
:hi StatusLine   cterm=none           ctermfg=black     ctermbg=white
:hi StatusLineNC cterm=none           ctermfg=black     ctermbg=gray
:hi String       cterm=none           ctermfg=93
:hi Structure    cterm=none           ctermfg=125
:hi Title        cterm=none           ctermfg=241
:hi Todo         cterm=bold           ctermfg=white ctermbg=236
:hi Type         cterm=none           ctermfg=92
:hi Underlined   cterm=underline      ctermfg=5
:hi VertSplit    cterm=bold           ctermfg=234 ctermbg=234
:hi Visual       cterm=reverse
:hi VisualNOS    cterm=bold,underline
:hi WarningMsg   cterm=none           ctermfg=1
:hi WildMenu     cterm=none           ctermfg=0 ctermbg=3
