" this has to be first
set nocompatible

" set
set copyindent
set expandtab
set foldenable
set foldlevelstart=1
set gdefault
set guioptions=m
set helpheight=200
set hidden
set ignorecase
set incsearch
set iskeyword-=:
set laststatus=2 
set noswapfile
set scrolloff=10
set shiftwidth=3
set shiftround
set smartcase
set smarttab
set tabstop=3
set textwidth=78
set undolevels=1000
set winminheight=0

" let
let perl_fold=1
let mapleader=";"

" other stuff
colorscheme iijo
filetype plugin on

" use Perl style regexps
nnoremap / /\v
vnoremap / /\v

" use tab to find matching parens
nnoremap <tab> %
vnoremap <tab> %

" edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" easier to escape
inoremap jj <ESC>

" Avoid accidental hits of <F1> while aiming for <Esc>
map! <F1> <Esc>

" window and buffers
map <leader>d :bd<cr>
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>j :winc j<cr>:winc _<cr>
map <leader>k :winc k<cr>:winc _<cr>
map <leader>l :winc l<cr>:winc _<cr>
map <leader>h :winc h<cr>:winc _<cr>
map <leader>_ :winc _<cr>

" OS clipboard yank and paste
nmap <leader>Y "+y
nmap <leader>P "+p

" perldoc plugin
let g:perldoc_program='/usr/bin/perldoc'
map <leader>o :Perldoc

" Complete whole filenames/lines with a quicker shortcut key in insert mode
imap <C-f> <C-x><C-f>
imap <C-l> <C-x><C-l>

" folding
nnoremap <Space> za
vnoremap <Space> za

" foldtext
:function! PerlFoldText()
:  let text  = getline(v:foldstart)
:  let sub   = ' ' . substitute(text, '\(sub \w\+\).*', '\1', 'g')
:  let lines = v:foldend - v:foldstart
:  let lines = ' (' . lines . ' lines) '
:  return v:folddashes . sub . lines
:endfunction

augroup perl_files
   set foldtext=PerlFoldText()
augroup end

" slime
vmap <C-c><C-c> "ry:call Send_to_Screen(@r)<cr>
nmap <C-c><C-c> vip<C-c><C-c>
nmap <C-c>v :call Screen_Vars()<cr>

" scratch
map <leader><tab> :Scratch<cr>

" NERD commenter
let NERDSpaceDelims=1

