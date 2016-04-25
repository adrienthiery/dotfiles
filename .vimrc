set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax enable
filetype plugin indent on    " required

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set colorcolumn=80
highlight ColorColumn ctermbg=red
set number
imap jj <ESC>
set hls is
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

noremap w!! w !sudo tee > /dev/null %
