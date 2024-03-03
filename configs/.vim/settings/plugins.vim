" ***************  plugins *************** "

call plug#begin('~/.vim/plugged')

 Plug 'mhinz/vim-startify'
 Plug 'jiangmiao/auto-pairs'
 " Plug 'ervandew/supertab'
 " Plug 'xolox/vim-misc.git'
 " Plug 'xolox/vim-session.git'
     "let g:session_autoload = 'no'   "for vim-session.git
     "let g:session_autosave = 'no'  "for vim-session.git
 " Plug 'terryma/vim-multiple-cursors'
    "let g:multi_cursor_next_key='<C-l>'
 " filetype plugin indent on     " required!


" == vim-textmanip ==
     Plug 't9md/vim-textmanip'
        xmap <M-d> <Plug>(textmanip-duplicate-down)
        nmap <M-d> <Plug>(textmanip-duplicate-down)
        xmap <M-D> <Plug>(textmanip-duplicate-up)
        nmap <M-D> <Plug>(textmanip-duplicate-up)

        map <M-Down> <Plug>(textmanip-move-down)
        map <M-Up> <Plug>(textmanip-move-up)
        map <M-j> <Plug>(textmanip-move-down)
        map <M-k> <Plug>(textmanip-move-up)
        map <M-h> <Plug>(textmanip-move-left)
        map <M-l> <Plug>(textmanip-move-right)

 Plug 'sheerun/vim-polyglot'
 "Plug 'skywind3000/asyncrun.vim'

 " autoclose html http://stackoverflow.com/a/134990/2310783. sukima/xmledit + othree/xml.vim
    Plug 'sukima/xmledit'
    Plug 'othree/xml.vim'
    Plug 'scrooloose/nerdtree'
        " autostart
        autocmd vimenter * NERDTree | wincmd p
        nnoremap <silent> <F3> :NERDTreeToggle<CR>:wincmd p<CR>
        map <A-1> :NERDTreeFocus<CR>
        map <A-2> :wincmd p<CR>
        let NERDTreeMinimalUI = 1
        let NERDTreeDirArrows = 1

        "close vim if the only window left open is a NERDTree
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    Plug 'Xuyuanp/nerdtree-git-plugin'

    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/syntastic'

 "Plug 'yegappan/mru'
    "nmap <leader>h :MRU<CR>
    "https://stackoverflow.com/questions/15397567/vim-error-detected-while-processing-function-snr37-mru-loadlist
    ":call delete(g:MRU_File)

 " == fzf ==
     Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
     Plug 'junegunn/fzf.vim'
        nmap <leader>b :Buffers<CR>
        "nmap <leader>h :History<CR>

 " == AIRLINES ==
       Plug 'bling/vim-airline'
     "Note: Mappings will be ignored within a NERDTree buffer
      set encoding=utf-8
      "set laststatus=2
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#show_buffers = 1
      let g:airline#extensions#tabline#buffer_idx_mode = 1
      "let g:airline_powerline_fonts=0

      "extensions
        let g:airline#extensions#disable_rtp_load = 1
      " an empty list disables all extensions
        let g:airline_extensions = ['tabline']

      nmap <leader>1 <Plug>AirlineSelectTab1
      nmap <leader>2 <Plug>AirlineSelectTab2
      nmap <leader>3 <Plug>AirlineSelectTab3
      nmap <leader>4 <Plug>AirlineSelectTab4
      nmap <leader>5 <Plug>AirlineSelectTab5
      nmap <leader>6 <Plug>AirlineSelectTab6
      nmap <leader>7 <Plug>AirlineSelectTab7
      nmap <leader>8 <Plug>AirlineSelectTab8
      nmap <leader>9 <Plug>AirlineSelectTab9

      "if !exists('g:airline_symbols')
        "let g:airline_symbols = {}
      "endif
      "let g:airline_symbols.space = "\ua0"

      " unicode symbols
      "let g:airline_left_sep = '»'
      "let g:airline_left_sep = '▶'
      "let g:airline_right_sep = '«'
      "let g:airline_right_sep = '◀'
      "let g:airline_symbols.crypt = '🔒'
      "let g:airline_symbols.linenr = '␊'
      "let g:airline_symbols.linenr = '␤'
      "let g:airline_symbols.linenr = '¶'
      "let g:airline_symbols.branch = '⎇'
      "let g:airline_symbols.paste = 'ρ'
      "let g:airline_symbols.paste = 'Þ'
      "let g:airline_symbols.paste = '∥'
      "let g:airline_symbols.whitespace = 'Ξ'


 " == tagbar ==
     "Plug 'vim-scripts/Tagbar'
        "nnoremap <silent> <F9> :TagbarToggle<CR>
          "hide php variables
          "let g:tagbar_type_php  = {
            "\ 'ctagstype' : 'php',
            "\ 'kinds'     : [
                "\ 'i:interfaces',
                "\ 'c:classes',
                "\ 'd:constant definitions',
                "\ 'f:functions',
                "\ 'j:javascript functions:1'
            "\ ]
          "\ }

            " window left
            "let g:tagbar_left = 1

            " window width
            "let g:tagbar_width = 30

            " Show arrow instead of +/-
            "let g:tagbar_iconchars = ['▶', '◢']

            " Don't sort
            "let g:tagbar_sort = 1

            " Single click"
            "let g:tagbar_singleclick = 1

            " autoload
            "autocmd VimEnter * nested :TagbarOpen

 " *** need compilation ***

 " == YouCompleteMe ==
     Plug 'Valloric/YouCompleteMe'
         inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
         let g:ycm_key_list_select_completion = ['<TAB>', '<DOWN>']
         let g:ycm_key_list_previous_completion = ['<S-TAB>', '<UP>']
         let g:ycm_key_list_stop_completion = ['<C-y>']
         "Youcompleteme fix
            let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
         "sudo apt install ycmd

" == Plugin to toggle, display and navigate marks
    Plug 'kshenoy/vim-signature'

" == Solarized ==
     Plug 'altercation/vim-colors-solarized'
        let g:solarized_termcolors=256
        syntax enable
        set background=dark
        "colorscheme solarized


" == EasyMotion ==
    Plug 'Lokaltog/vim-easymotion'
        let g:EasyMotion_do_mapping = 0 " Disable default mappings

        " Jump to anywhere you want with minimal keystrokes, with just one key binding.
        " `s{char}{label}`
        nmap s <Plug>(easymotion-overwin-f)
        " or
        " `s{char}{char}{label}`
        " Need one more keystroke, but on average, it may be more comfortable.
        nmap s <Plug>(easymotion-overwin-f2)

        " Turn on case insensitive feature
        let g:EasyMotion_smartcase = 1

        " JK motions: Line motions
        map <Leader>j <Plug>(easymotion-j)
        map <Leader>k <Plug>(easymotion-k)

" == GitGutter ==
    Plug 'airblade/vim-gitgutter'

" == Multiple cursors ==
    Plug 'terryma/vim-multiple-cursors'

" == Lint ==
    Plug 'w0rp/ale'

    "Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" To ignore plugin indent changes, instead use:
filetype on
