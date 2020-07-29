colo ron
set tags=./tags,tags;
set mouse=a
set autoindent

" Fix yank and paste replacing yank register with whatever was replaced
xnoremap p pgvy

filetype plugin indent on
set foldmethod=syntax
set path=$PWD/**
set autochdir

" Change tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Go to next camel case
nnoremap <c-k> :<c-u>call search('\u')<cr>

" move selected lines up one line
xnoremap <C-I>  :m-2<CR>gv=gv

" move selected lines down one line
xnoremap <C-J> :m'>+<CR>gv=gv

" auto download vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
