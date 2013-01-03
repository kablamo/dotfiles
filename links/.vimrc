" this stuff has to be first
set nocompatible
filetype off " required!  gets turned on again later
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

" vundle manages vundle -- required
Bundle 'gmarik/vundle'

" Plugins!
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimproc'
Bundle 'Townk/vim-autoclose'
Bundle 'c9s/perlomni.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-eunuch'

" set things
set copyindent
set cursorline " highlight current line
set encoding=utf-8
set expandtab
set exrc " for vroom
set foldenable
set foldlevelstart=9
set foldmethod=syntax
set fillchars=fold:\ ,vert:\ ,stl:\ ,stlnc:\ 
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
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set scrolloff=10
set shiftwidth=4
set shiftround
set smartcase
set smarttab
set showcmd
set tags=/home/eric/perl5/tags
set tabstop=4
set textwidth=0
set undolevels=1000
set winminheight=0
set wildignore=tags
set wildmode=longest,list,full

" filetype (required for perl omni completion and vundle)
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

" edit dotfiles
map <leader>ea :e /home/eric/code/dotfiles/links/.bash/aliases.sh<cr>
map <leader>ec :e /home/eric/code/dotfiles/links/.vim/colors/iijo.vim<cr>
map <leader>eg :e /home/eric/code/dotfiles/links/.gitconfig<cr>
map <leader>ev :e /home/eric/code/dotfiles/links/.vimrc<cr>
map <leader>et :e /home/eric/code/dotfiles/links/.todo/todo.txt<cr>
map <leader>em :e /home/eric/code/dotfiles/links/.tmux.conf<cr>

" edit local dotfiles
map <leader>ela :e /home/eric/.aliases<cr>
map <leader>elv :e /home/eric/.vimrc.local<cr>

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
nmap <leader>Y "*y
nmap <leader>P "*p

" vim-powerline
"let g:Powerline_symbols = 'fancy'
let g:Powerline_theme = 'kablamo'
let g:Powerline_colorscheme = 'kablamo'

" commandline awesum sauce
map <leader>x :Sscratch<cr>:0r !

" fugitive keybindings
map <leader>gco :!git checkout <c-r><c-g><cr><cr><cr>l
map <leader>gc. :Gwrite<cr>:Gcommit <c-r><c-g><cr>
map <leader>gcc :Gcommit<cr>
map <leader>gg  :Gwrite<cr>:Gcommit<cr>
map <leader>gpp <leader>xgit pp<cr>
map <leader>gd  :Gdiff<cr>
map <leader>ge  :Gedit HEAD<cr>
map <leader>gl  :Glog<cr>
map <leader>gs  :Gstatus<cr>
map <leader>gb  :Gblame<cr>

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

" Taglist
"map <leader>m :Tlist<cr>
"let Tlist_Compact_Format=1
"let Tlist_Enable_Fold_Column=0
"let Tlist_Use_Right_Window=1

" Tagbar
map <leader>m :TagbarOpenAutoClose<cr>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_indent = 1

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

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_camel_case_completion = 0
let g:neocomplcache_enable_underbar_completion = 0
inoremap <expr><c-n>  neocomplcache#start_manual_complete()
inoremap <expr><c-o>  neocomplcache#manual_omni_complete()
inoremap <expr><c-f>  neocomplcache#manual_filename_complete()
inoremap <expr><c-h>  neocomplcache#cancel_popup()
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" PerlHelp
map <leader>PH :PerlHelp 

" Turn off warnings for perl compiler (see ':h :comp')
let g:perl_compiler_force_warnings = 0
comp perl

" ack
nmap <leader>* :Ack <cword> %<cr>
vmap <leader>* y:Ack <c-r>" %<cr>
nmap <leader>/ :Ack 
vmap <leader>/ y:Ack <c-r>"

" quickfix
map fn :cn<cr>
map fp :cp<cr>
map fw :cope<cr>

" Man pages
runtime ftplugin/man.vim
let $PAGER=''
nmap K :Man <cword><cr>
vmap K y:Man <c-r>"<cr>

" Visual search fu
vmap * y/<c-r>"<cr>
vmap # y?<c-r>"<cr>

" ctrlp
let g:ctrlp_open_multiple_files = '1jr'

" gundo
map <leader>u :GundoToggle<cr>

" vundle
map <leader>v :BundleList<cr>

try 
    source /home/eric/.vimrc.local
catch
endtry
