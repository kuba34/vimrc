" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Turn on the verboseness to see everything vim is doing.
"set verbose=9

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set number

set expandtab

" I like 4 spaces for indenting
set shiftwidth=4
set sts=4
" I like 4 stops
set tabstop=4

" Always  set auto indenting on
set autoindent

" select when using the mouse
set mouse=a
set selectmode=mouse

" do not keep a backup files 
set nobackup
set nowritebackup

" show the cursor position all the time
set ruler 

" show (partial) commands
set showcmd     

" do incremental searches (annoying but handy);
set incsearch

" Set ignorecase on
set ignorecase

" smart search (override 'ic' when pattern has uppers)
set scs

execute pathogen#infect()
filetype plugin indent on

if expand('%:t') =~ ".\\.c"
  map <F4> :w !%:p:r <CR>
  map <F5> :w !gcc -Wall -pedantic %:p -o %:p:r <CR>
  map <F6> :w !gcc -Wall -pedantic %:p -o %:p:r && %:p:r <CR>
  map <F7> :w !gcc -ggdb -Wall -pedantic %:p -o %:p:r <CR>
  nnoremap \c :w !gcc -ggdb -Wall -pedantic -O2 %:p -o 
endif

if expand('%:t') =~ ".\\.cpp" 
  map <F4> :w !%:p:r <CR>
  map <F5> :w !g++ -Wall -pedantic %:p -o %:p:r <CR>
  map <F6> :w !g++ -Wall -pedantic %:p -o %:p:r &&  %:p:r <CR>
  map <F7> :w !g++ -ggdb -Wall -pedantic %:p -o %:p:r <CR>
  nnoremap \c :w !g++ -ggdb -Wall -pedantic -O2 %:p -o 
endif

noremap <F3> :set list!<Bar>set list? <CR>
noremap <F2> :set number!<Bar>set number? <CR>
noremap \xd :%!xxd <CR>
noremap \rd :%!xxd -r <CR>
noremap \fq :q! <CR>
noremap \p :!cd %:h <CR>
colorscheme peachpuff
