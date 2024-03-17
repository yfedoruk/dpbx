" == Type Script ==
 Plug 'Quramy/tsuquyomi'

" == Golang ==
 Plug 'fatih/vim-go'
    set autowrite
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>r  <Plug>(go-run)


 " == PHP ==
     " Generates PHP docblocks
     Plug 'tobyS/pdv'
     Plug 'tobyS/vmustache' " required
     " Plug 'SirVer/ultisnips'  "sudo pip install neovim or pip3 install neovim
     " PHP documenter script bound to Control-P
     autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
     autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
     autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR>
     let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
     nnoremap <buffer> <C-l> :call pdv#DocumentWithSnip()<CR>
