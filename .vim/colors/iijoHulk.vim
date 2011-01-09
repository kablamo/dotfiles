set background=dark
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
":hi Normal 
":hi Cursor
":hi VertSplit 
:hi Folded       cterm=none           ctermfg=161 ctermbg=none
:hi FoldColumn   cterm=none           ctermfg=green ctermbg=7
:hi IncSearch    cterm=none           ctermfg=green ctermbg=none
:hi ModeMsg      cterm=none           ctermfg=green
:hi MoreMsg      cterm=none           ctermfg=darkgreen
:hi NonText      cterm=bold           ctermfg=238
:hi Question     cterm=none           ctermfg=green
:hi Search       cterm=none           ctermfg=green ctermbg=none
:hi SpecialKey   cterm=none           ctermfg=darkgreen
:hi StatusLine   cterm=none           ctermfg=black     ctermbg=white
:hi StatusLineNC cterm=none           ctermfg=black     ctermbg=gray
:hi Title        cterm=bold           ctermfg=yellow
:hi Statement    cterm=bold           ctermfg=128
:hi Visual       cterm=reverse
:hi WarningMsg   cterm=none           ctermfg=1
:hi String       cterm=none           ctermfg=93
:hi Comment      cterm=bold           ctermfg=241
:hi Constant     cterm=none           ctermfg=91
:hi Special      cterm=none           ctermfg=201
:hi Identifier   cterm=none           ctermfg=141
:hi Include      cterm=none           ctermfg=red
:hi PreProc      cterm=none           ctermfg=lightgray
:hi Operator     cterm=none           ctermfg=253
:hi Define       cterm=none           ctermfg=red
:hi Type         cterm=none           ctermfg=92
:hi Function     cterm=bold           ctermfg=green
:hi Structure    cterm=none           ctermfg=125
:hi LineNr       cterm=none           ctermfg=253
:hi Ignore       cterm=bold           ctermfg=253
:hi MatchParen   cterm=bold           ctermfg=green ctermbg=none
":hi Todo 
:hi Directory    cterm=bold           ctermfg=253
:hi ErrorMsg     cterm=bold           ctermfg=white ctermbg=red
:hi VisualNOS    cterm=bold,underline
:hi WildMenu     cterm=none           ctermfg=0 ctermbg=3
:hi DiffAdd      cterm=none           ctermbg=4
:hi DiffChange   cterm=none           ctermbg=5
:hi DiffDelete   cterm=bold           ctermfg=4 ctermbg=6
:hi DiffText     cterm=bold           ctermbg=1
:hi Underlined   cterm=underline      ctermfg=5
:hi Error        cterm=bold           ctermfg=white ctermbg=darkred
:hi SpellErrors  cterm=bold           ctermfg=7 ctermbg=1
