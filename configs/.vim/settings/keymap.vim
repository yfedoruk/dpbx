" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

map <LEADER>w :w<CR>
map <LEADER>q :q<CR>
map <LEADER>wq :wq<CR>
map <leader>qq :bp<bar>sp<bar>bn<bar>bd<CR>.
map <leader>wqq :w<bar>bp<bar>sp<bar>bn<bar>bd<CR>.
map :W :w<CR>
map :Q :q<CR>
:map <Home> ^
map <End> $
:imap <Home> <Esc>^i
imap jk <Esc>
 " :map <End> A

" set VISUAL mode instead of SELECT on shift-arrows
nmap <S-Up> V
nmap <S-Down> V

"redo
"nnoremap r <C-R>
noremap <M-q> <ESC>
" vnoremap <S-End> $

" Fast saving
nmap :W<cr> :w<cr>


"duplicate current line
"map <C-d> yyp
" vmap <C-p> y'}P "map to php-doc

" tabs. Tabbing selected section forward/back (don't write comments on right side of code, so as it thinks whitespace is command!)
vmap <Tab> >gv
vmap <S-Tab> <gv

" remap autocompletion html-tags to ,/
imap ,/ </<C-X><C-O>

"*****************************************************************************
""" Abbreviations
"*****************************************************************************
""" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" start a subshell. (go to bash without exiting vim)
nnoremap <LEADER>s :sh<CR>

"hi Search guibg=peru guifg=red
hi Search cterm=NONE ctermfg=red " ctermbg=blue
