set nocompatible

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Default color scheme
color desert

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Drupal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup module
  autocmd BufRead *.module set filetype=php
  autocmd BufRead *.install set filetype=php
  autocmd BufRead *.inc set filetype=php
  autocmd BufRead *.profile set filetype=php
  autocmd BufRead *.test set filetype=php
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SQL syntax highlighting inside Strings
let php_sql_query = 1

" enable autocompletion for php functions
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

let php_htmlInStrings = 1 " Enable HTML syntax highlighting inside strings:
let php_parent_error_close = 1 " For highlighting parent error ] or ):
let php_parent_error_open = 1 " For skipping a php end tag, if there exists an open ( or [ without a closing one:
let php_baselib = 1
let php_noShortTags = 1

" Limit line lengths to 80 characters - seems to only work in comments.
autocmd FileType php setlocal textwidth=80

cmap w!! %!sudo tee > /dev/null %
