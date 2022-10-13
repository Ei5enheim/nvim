source ~/.vimrc

runtime! partials/anyfold.vim
runtime! partials/plugins.vim
runtime! partials/settings.vim
runtime! partials/fzf.vim
runtime! partials/colorscheme.vim
runtime! partials/nerdtree.vim
runtime! partials/mappings.vim
runtime! partials/lang_mappings/*.vim
runtime! partials/coc.vim
" runtime! partials/abbreviations.vim
" runtime! partials/search.vim
" runtime! partials/replace_pair.vim

filetype indent on    " Use filetype indentation
filetype on
filetype plugin indent on " Allow plugins to use filetype indentation
syntax on             " Turn on syntax highlighting

" auto indent ruby and erb files
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType json syntax match Comment +\/\/.\+$+

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

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
