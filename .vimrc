" this has to be first
set nocompatible

" set
set copyindent
set encoding=utf-8
set expandtab
set foldenable
set foldlevelstart=1
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
set noswapfile
set nowrap
set scrolloff=10
set shiftwidth=4
set shiftround
set smartcase
set smarttab
set tabstop=4
set textwidth=78
set undolevels=1000
set winminheight=0
set wildmode=longest,list,full
set nowrap

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

" fugitive keybindings
map <leader>g  :Gcommit<cr>
map <leader>gs :Gstatus<cr>
map <leader>ge :Gedit HEAD<cr>
map <leader>gd :Gdiff<cr>

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

" slime
vmap <C-c><C-c> "ry:call Send_to_Screen(@r)<cr>
nmap <C-c><C-c> vip<C-c><C-c>
nmap <C-c>v :call Screen_Vars()<cr>

" scratch
map <leader><tab> :Scratch<cr>

" NERD Commenter
let NERDSpaceDelims=2

" NERD Tree
map <leader>ls :NERDTree<cr>
let NERDTreeChDirMode=1
let NERDTreeWinPos='Right'
let NERDTreeStatusline=-1

" NERD Tree with ack
let g:path_to_search_app = "/usr/local/bin/ack"

" Taglist
map <leader>t :Tlist<cr>
let Tlist_Compact_Format=1
let Tlist_Enable_Fold_Column=0

" PERLDOC2
let g:Perldoc_path = '/home/eric/Documents/perldoc/'

" perltidy
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm command! -range=% -nargs=* Tidy <line1>,<line2>!perltidy -q
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm noremap <leader>y :Tidy<CR>

" dbext
let dbext_default_display_cmd_line = 1

" supertab
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

try 
    source /home/eric/.vimrc.local
catch
endtry
