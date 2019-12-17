set nocompatible
filetype off
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/SearchComplete'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
"Plugin 'mutewinter/vim-tmux'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'flazz/vim-colorschemes'
call vundle#end()
" Vundle end
filetype plugin indent on
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
set confirm
set cursorline
set incsearch
set laststatus=2
set showmatch
set showcmd
set background=dark
"set number
" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree end
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
