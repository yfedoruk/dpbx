" whitespaces
" set encoding=utf-8
" set listchars=tab:>-,trail:·
" set listchars=eol:$,tab:>·,trail:·,extends:>,precedes:<
" set listchars=tab:>·,trail:·,extends:>,precedes:<

" w/s over tabs
" set tabstop=8

" map <C-d> ddkP "dirty hack for move lines
" vmap <C-p> y'>p "duplicate..."


" ------------------ unportable configs ------------------ "
" backup files
" set backupdir=~/tmp/vim
"++++++++++++++++++++++++++++"


"behave mswin

" -------------- colorscheme ---------------- "
"colorscheme askapachecode
"colorscheme default1
"colorscheme ron



" ******************************************* Need to explore **********
" Disable annoying auto line break
" fu! local:disableBr()
"  set wrap
"  set linebreak
"  set nolist  " list disables linebreak
"  set textwidth=0
"  set wrapmargin=0
"  set fo-=t
" endfu

" Disable line breaks for all file types
":au BufNewFile,BufRead *.* call local:disableBr()


" --------------
" for vim-move.git 
" let g:move_key_modifier = 'C'   " for vim-move. Need set also in plugin Up and Down keys by hands :("
" --------------
" execute pathogen#infect()
" Bundle 'mbadran/headlights'
" Bundle 'potion'
" filetype on

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" Bundle 'file:///home/slava/tmp/taglist'


"Removing plugins
Plugin 'command-t'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-rails.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vundle'
Plug 'leafgarland/typescript-vim'
let g:typescript_indent_disable = 1

" --------------

" set backspace=2
" set backspace=indent,eol,start
" echo $TERM -- term env variable
"set nocursorline
" set synmaxcol=120 






 " My Bundles here:
 "
 " vim-scripts repos
 " Plugin 'L9'
 " Plugin 'FuzzyFinder'
 "
 " original repos on github. git@github.com:
 " Plugin 'tpope/vim-fugitive'
 " Plugin 'Lokaltog/vim-easymotion'
 " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'vim-scripts/taglist.vim.git'
    let g:Tlist_Ctags_Cmd='/usr/bin/ctags'

 " Plugin 'vim-scripts/Tagbar.git'
 " Plugin 'gerw/vim-HiLinkTrace.git'
 " Plugin 'scrooloose/nerdcommenter.git'
 " Plugin 'ervandew/supertab.git'

 "Plug 'wincent/command-t'
 "Plug 'ctrlpvim/ctrlp.vim'

 " == Unite ==
  Plug 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make.  https://github.com/Shougo/vimproc.vim/issues/83
  Plug 'Shougo/unite.vim'
  Plug 'Shougo/denite.nvim'
      " auto insert mode"
      let g:unite_enable_start_insert = 1

      "place right and bottom
      let g:unite_split_rule = "botright"

      "disable overwriting  statusline
      let g:unite_force_overwrite_statusline = 0

      "size unite window
      let g:unite_winheight = 10

      "pretty icons
      let g:unite_candidate_icon="▷"

      "general find mapping
      nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>

      "buffers
      nnoremap <leader>b :<C-u>Unite -start-insert -auto-resize buffer<CR>
      nnoremap <space>s :Unite -quick-match buffer<cr><Paste>

" airline
 function! AccentDemo()
  let keys = ['a','b','c','d','e','f','g','h']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('a', 'red')
  call airline#parts#define_accent('b', 'green')
  call airline#parts#define_accent('c', 'blue')
  call airline#parts#define_accent('d', 'yellow')
  call airline#parts#define_accent('e', 'orange')
  call airline#parts#define_accent('f', 'purple')
  call airline#parts#define_accent('g', 'bold')
  call airline#parts#define_accent('h', 'italic')
  let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()
 
 
 
 
 
nmap <leader>tn :tabnew<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt


map <C-t> :tabnew<cr>
map <C-w> :tabclose<cr>
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-0> 1gT



" == this save file on press ESC in insert mode ==
if has("autocmd")
	au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
	au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
	au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif


