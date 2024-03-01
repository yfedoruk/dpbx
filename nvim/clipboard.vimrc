https://www.reddit.com/r/neovim/comments/lrdlw8/comment/gol16q3/
https://superuser.com/a/1801495

in vim 
  :checkhealth
and see on clipboard WARNINGS. If no clipboard found, then
1. sudo apt install xclip
2.vim.opt.clipboard = 'unnamedplus' 

check then in vim 
  :echo has('clipboard')

