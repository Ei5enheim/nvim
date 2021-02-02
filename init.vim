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

set ruler
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

filetype indent on    " Use filetype indentation
filetype on
filetype plugin indent on " Allow plugins to use filetype indentation
syntax on             " Turn on syntax highlighting

" auto indent ruby and erb files
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" colorscheme molokai " Use the molokai colorscheme

" Make an undo directory if it does not exist
if !isdirectory($HOME . "/.config/nvim/undo")
    call mkdir($HOME . "/.config/nvim/undo", "p")
endif
set undodir=~/.config/nvim/undo " Set the undo directory
set undofile " Turn on persistent undo
set undoreload=10000

set backup
if !isdirectory($HOME . "/.config/nvim/backup")
    call mkdir($HOME . "/.config/nvim/backup", "p")
endif

set backupdir=~/.config/nvim/backup

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" auto copy
set mouse=a
vmap <LeftRelease> "*ygv

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" NERDTree config
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" user nerdtree find to search 
nnoremap <silent> <Leader>v :NERDTreeFind<CR> 
" Automatically delete the buffer of the file you just deleted
let NERDTreeAutoDeleteBuffer = 1
" close the tab if the only windown is nerdtree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" make nerdtree prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" this is the key to jump to the nerdtree window from any other window
map <leader>r :NERDTreeFind<cr>
" pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at 
map ] :NERDTreeFind<CR>
