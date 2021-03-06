execute pathogen#infect()
execute pathogen#helptags()


syntax on

" Enable file-type indentation
filetype plugin indent on 

filetype plugin on

nnoremap <F5> :GundoToggle<CR>
nnoremap <F4> :CtrlP<CR>

set colorcolumn=80
hi ColorColumn ctermbg=0

set nocompatible

set background=dark

set spell

" for vim-javascript
set regexpengine=1
syntax enable

" set line numbers color
hi LineNr ctermfg=darkcyan

" wrap too long lines
set wrap

" don't wrap words
set textwidth=0

" Tabs are 4 characters
set tabstop=4

" (Auto)indent uses 4 characters
set shiftwidth=4

" spaces instead of tabs
set expandtab

" show partial commands
set showcmd

" show matching braces
set showmatch

" highlight the search terms
set hlsearch

" jump to the matches while typing
set incsearch

" ignore case while searching
set ignorecase

" powerful backspaces
set backspace=indent,eol,start

" show line numbers
set number

" history
set history=5000

" 50000 undo levels
set undolevels=50000

" Persistent undo
try
    set undodir=~/.vim/presistent_history
    set undofile
catch
endtry

" backup directory
set directory=~/.vim/backup,.,/tmp

" swap directory
set backupdir=~/.vim/backup,.,/tmp

" show a ruler
set ruler

" write before hiding a buffer
set autowrite

" Always show the menu, insert longest match
set completeopt=menuone,longest

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" jedi for python
let g:jedi#use_tabs_not_buffers = 0

" python mode tweeks
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
"let g:pymode_lint_ignore = "E111,E121"
let g:pymode_rope = 0
let g:syntastic_python_pylint_post_args="--max-line-length=90"

autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4

" Show hidden files in Nerd Tree
let NERDTreeShowHidden=1
