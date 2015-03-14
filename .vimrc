
execute pathogen#infect()

" Enable file-type indentation
filetype plugin indent on 

filetype plugin on

nnoremap <F5> :GundoToggle<CR>

syntax on

set background=dark

" set line numbers color
hi LineNr ctermfg=darkcyan

" wrap too long lines
set wrap

" don't wrap words
set textwidth=0

" Tabs are 2 characters
set tabstop=2

" (Auto)indent uses 2 characters
set shiftwidth=2

" spaces instead of tabs
set expandtab

" show partial commands
set showcmd

" show matching braces
set showmatch

" highlight the searchterms
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

