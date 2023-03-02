" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/SearchComplete'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-syntastic/syntastic'
Plug 'flazz/vim-colorschemes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

filetype plugin indent on
if &t_Co > 2 || has("gui_running")
        syntax on
        set hlsearch
endif

set confirm " confirm save file
set cursorline
set incsearch
set laststatus=2
set showmatch
set showcmd
set background=dark

" syntastic settings
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
" syntastic end
" vim-colorscheme
 set term=screen-256color
 colorscheme PaperColor
" vim-colorscheme end
