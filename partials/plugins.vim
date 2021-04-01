" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'tpope/vim-commentary'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'flazz/vim-colorschemes'
Plug 'mileszs/ack.vim'
Plug '907th/vim-auto-save'
Plug 'editorconfig/editorconfig-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
