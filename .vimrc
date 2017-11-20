" General Settings
syntax enable           " syntax highlihg
set cursorline
set cursorcolumn        " highlight current line
set nocompatible        " not compatible with the old-fashion vi mode
set bs=2                " allow backspacing over everything in insert mode
set ruler               " show the cursor position all the time
set number              " show column number
set autoread            " auto read when file is changed from outside

" Scheme Setting
set background=dark
colorscheme Tomorrow-Night-Bright

" convert tab to space
set expandtab        " replace <TAB> with spaces
set tabstop=2
set shiftwidth=2

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" highlight json files
autocmd BufNewFile,BufRead *.json set ft=javascript

" javascript syntax
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1


" map leader key to ,
let mapleader=","

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 :tablast<cr>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'easymotion/vim-easymotion'
Plug 'Townk/vim-autoclose'
Plug 'sukima/xmledit'                 " some feature not working
Plug 'scrooloose/nerdtree'            " better file system
Plug 'terryma/vim-multiple-cursors'   " sublime-features, needs vim 7.4
Plug 'scrooloose/nerdcommenter'       " comment in easy way
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'gkz/vim-ls'
Plug 'isRuslan/vim-es6'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " for fuzzy search
Plug 'junegunn/fzf.vim'

call plug#end()
