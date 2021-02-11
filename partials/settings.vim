" commands
set showmatch         " Show matching braces
set hlsearch          " switch on highlighting for the last used search pattern
set showcmd           " display incomplete commands
set mat=1             " Set the time to show matching braces to 1 second
set ignorecase        " Ignore case on searches
set smartcase         " Use case sensitive search if there is a capital letter in the search
set undolevels=100   " Set the number of undos that are remembered
set number            " Show line numbers
" set guifont=Monaco:h13 " Use Menlo size 13 font
set incsearch         " Incremental search: jump to the first occurrence of search while the user is still searching
set mouse=a          " Enable the mouse
set showcmd           " Show the current command in the bottom right
set autoindent        " Use autoindentation
set splitbelow        " Make horizontal splits below instead of above
set splitright        " Make vertical splits on the right
set scrolloff=3       " Start scrolling when the cursor is 3 lines away from the bottom of the window
set wrap              " Wrap long lines
set laststatus=2      " Always display the status line
set cursorline        " Highlight the current line
set autoread          " Automatically reload the file when it is changed from an outside program
set omnifunc=syntaxcomplete#Complete " Enable omnicompletion
set nofoldenable
set autowrite 
set modifiable

set t_Co=256

set ruler
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
 set termguicolors

" auto copy
set mouse=a
vmap <LeftRelease> "*ygv

" spell check
set spell spelllang=en_ca
" Any empty ack search will search for the work the cursor is on
let g:rg_use_cword_for_empty_search = 1
let g:auto_save = 1  " enable AutoSave on Vim startup
