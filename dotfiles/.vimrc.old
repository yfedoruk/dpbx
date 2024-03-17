" vim -u NONE "load without vimrc"
" source ~/.vim/settings/off.vim
" source ~/.vim/settings/gvim.rc
" source ~/.vim/settings/textmanip.vim
" source ~/.vim/settings/mswin.vim
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim        "(windows shortcut keys). /usr/share/vim/vim74/mswin.vim"

set nocompatible
syntax on
source ~/.vim/settings/keymap.vim
source ~/.vim/settings/plugins.vim
set runtimepath+=$HOME/.vim/

" == colorscheme ==
  if $COLORTERM == 'gnome-terminal'
      set t_Co=256
  endif
" hi Normal guifg=white guibg=black

" ******************************************** "

" autocompleting
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

 "autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
 autocmd filetype c nnoremap <F9> :w <bar> exec 'make'<CR>
 autocmd filetype cpp nnoremap <F9> :w <bar> exec 'make'<CR>

" Cursor
    " vertical
	let &t_EI = "\<Esc>]12;red\x7"
	autocmd InsertEnter * set cul
	autocmd InsertLeave * set nocul

set ssop-=options    " do not store global and local values in a session"
set ssop-=folds      " do not store folds"

" ---- Speed up vim (http://superuser.com/questions/302186/vim-scrolls-very-slow-when-a-line-is-to-long)  ---  :help slow-terminal ----
syntax sync minlines=256

set ttyfast           " u got a fast terminal
"set ttyscroll=3
set lazyredraw        " to avoid scrolling problems
set nocursorcolumn
set nocp
set nobackup
set noswapfile
set nowrap
set scrolljump=5
set nu                "set nonu
set shiftwidth=4      "folding indent options
set cursorline                                                          "select current line
set noundofile        "not create backup (untouched) files
hi cursorline term=bold cterm=bold guibg=#E5E5E5                        "cur. line color

set tabstop=4              "set expandtab on 4 spaces
set expandtab         "Use spaces, not tabs. `set noexpandtab` -- contra.  :#retab! -- Retabulate the whole file

" automatically use the '+' buffer (the system clipboard) by default.
set clipboard=unnamedplus

" whitespaces
set list listchars=tab:→\ ,trail:·,extends:>,precedes:<
set list
cmap w!! w !sudo tee > /dev/null %

highlight LineNr guifg=#050505 ctermfg=grey     " line number color

:au SessionLoadPost * :source ~/.vimrc

" let mapleader = ","     "map leader key \ to ,
