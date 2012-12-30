" this has to be first
set nocompatible

" set
set copyindent
set encoding=utf-8
set expandtab
set exrc " for vroom
set foldenable
set foldlevelstart=9
set foldmethod=syntax
set fillchars=fold:\ ,vert:\ 
set guioptions=m
set helpheight=200
set hidden
set hlsearch
set ignorecase
set incsearch
set iskeyword-=:
set iskeyword+=_
set laststatus=2 
set nolazyredraw           " turn off lazy redraw
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set noswapfile
set nowrap
set number
set scrolloff=10
set shiftwidth=4
set shiftround
set smartcase
set smarttab
set tags=/home/eric/tags
set tabstop=4
set textwidth=0
set undolevels=1000
set winminheight=0
set wildmode=longest,list,full
set nowrap

" filetype (required for perl omni completion)
filetype on
filetype plugin on
filetype indent on

" command line editing
cnoremap <C-A> <Home>

" mapleader
let mapleader=";"

" enable syntaxfolding
let javaScript_fold=1
let perl_fold=1
let ruby_fold=1
let sh_fold_enabled=1
let vimsyn_folding='af'
let xml_syntax_folding=1

" colors
syntax on  " sometimes this is not on by default
colorscheme iijo
au BufNewFile,BufRead *.tt setf tt2html
au BufNewFile,BufRead *.md setf mkd

" use tab to find matching parens
nnoremap <tab> %
vnoremap <tab> %

" previous buffer
map <space> :e#<cr>

" edit files
map <leader>eb :e /home/eric/.bashrc<cr>
map <leader>eg :e /home/eric/.gitconfig<cr>
map <leader>ev :e $MYVIMRC<cr>
map <leader>et :e /home/eric/.todo/todo.txt<cr>

" easier to escape
inoremap jj <ESC>

" Avoid accidental hits of <F1> while aiming for <Esc>
map! <F1> <Esc>

" window and buffers
map <leader>d :bd<cr>
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>j :winc j<cr>
map <leader>k :winc k<cr>
map <leader>l :winc l<cr>
map <leader>h :winc h<cr>
map -         :winc _<cr>
map <leader>= :winc =<cr>

" OS clipboard yank and paste
nmap <leader>Y "+y
nmap <leader>P "+p

" commandline awesum sauce
map <leader>x :Sscratch<cr>:0r !

" fugitive keybindings
map <leader>g<space> :Git 
map <leader>ga :Gwrite<cr>
map <leader>gc :Gcommit<cr>
map <leader>gn <leader>ga<cr>:Gcommit<cr>
map <leader>gpp :Git pp<cr>
map <leader>gd :Gdiff<cr>
map <leader>ge :Gedit HEAD<cr>
map <leader>gl :Glog<cr>
map <leader>gs :Gstatus<cr>

" Complete whole filenames/lines with a quicker shortcut key in insert mode
imap <C-f> <C-x><C-f>
imap <C-l> <C-x><C-l>

" folding
" nnoremap <Space> za
" vnoremap <Space> za

" foldtext
function! PerlFoldText()
  let text  = getline(v:foldstart)
  let sub   = ' ' . substitute(text, '\(sub \w\+\).*', '\1', 'g')
  let lines = v:foldend - v:foldstart
  let lines = ' (' . lines . ' lines) '
  return  sub . lines
endfunction

augroup perl_files
   set foldtext=PerlFoldText()
augroup end

" scratch
map <leader><tab> :Scratch<cr>

" NERD Commenter
let NERDSpaceDelims=2

" NERD Tree
map <leader>ls :NERDTreeToggle<cr>
map <leader>ls. :NERDTreeFind<cr>
let NERDTreeChDirMode=1
let NERDTreeWinPos='Right'
let NERDTreeStatusline=-1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=60

" buffergator
let g:buffergator_split_size=10
let g:buffergator_viewport_split_policy='B'
let g:buffergator_suppress_keymaps=1
map <leader>b :BuffergatorOpen<cr>

" CommandT
let g:CommandTMaxFiles=20000
let g:CommandTMaxDepth=100

" Taglist
map <leader>m :Tlist<cr>
let Tlist_Compact_Format=1
let Tlist_Enable_Fold_Column=0
let Tlist_Use_Right_Window=1

" perltidy
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm command! -range=% -nargs=* Tidy <line1>,<line2>!perltidy -q
autocmd BufRead,BufNewFile *.sql,*.t,*.pl,*.plx,*.pm noremap <leader>t :Tidy<CR>
fun DoTidy()
    "run :Tidy on entire buffer and return cursor to (almost) original position"
    let Pos = line2byte( line( "." ) )
    :Tidy
    exe "goto " . Pos
    redraw
endfun
" autocmd BufWrite *.t,*.pl,*.plx,*.pm call DoTidy()

" xml tidy
autocmd BufRead,BufNewFile *.xml command! -range=% -nargs=* Tidy <line1>,<line2>!xmllint --pretty 1 %
autocmd BufRead,BufNewFile *.xml noremap <leader>t :Tidy<CR>

" perlprove
" au BufRead,BufNewFile *.t set filetype=perl | compiler perlprove

" dbext
let dbext_default_display_cmd_line = 1

" supertab
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

" Perl omni complete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" PerlHelp
map <leader>PH :PerlHelp 

" vim help
map <leader>H :h 

" ack
map <leader>* :Ack <cword> %<cr>
map <leader>/ :Ack 

" quickfix
map fn :cn<cr>
map fp :cp<cr>
map fw :cp<cr>

" Man pages
runtime ftplugin/man.vim
let $PAGER=''
nmap K :Man <c-r>=expand("<cword>")<cr><cr>

" pathogen
call pathogen#infect()

try 
    source /home/eric/.vimrc.local
catch
endtry