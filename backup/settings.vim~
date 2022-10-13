" commands
set showmatch         " Show matching braces
set hlsearch          " switch on highlighting for the last used search pattern
set mat=1             " Set the time to show matching braces to 1 second
" set ignorecase        " Ignore case on searches
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
" fold/unfold block under cursor's scope: zc  zo, za (toggle)
" fold/unfold all blocks: zO, zC, zA, zM, zR for M and R cursor need not be in
" a block
" fold/unfold one level of block at a time: zm, zr
"
" zm, zr, zc, zo, close one level of folds and move upward or downwards 
set foldmethod=syntax
set autowrite 
set modifiable

" set list listchars=tab:>\ ,trail:-,eol:$ "set list chars

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

" to disable vim native status bar
set noshowmode

let g:rg_use_cword_for_empty_search = 1
let g:auto_save = 1  " enable AutoSave on Vim startup

" vim - grepper
let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)

" for insert mode
" shfit tab
inoremap <S-Tab> <C-d>

" to copy to&from system clipboard instead of vim registester
" see :help clipboard
set clipboard+=unnamedplus

" hybrid line numbers
"set nu rnu
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Use formatprg when available
let g:prettier#autoformat = 1
" Allow auto formatting for files without @format or @prettier tag
let g:prettier#autoformat_require_pragma = 0
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0
" run vim-prettier not only before saving, but also after changing text or leaving insert mode
autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall

" vim status bar config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
