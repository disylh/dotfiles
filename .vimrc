colo slate
syntax on

set number
highlight LineNr ctermfg=grey
 
map <C-I> :pyf ~/workspace/my-config/clang-format.py<CR>
imap <C-I> <ESC>:pyf p~/workspace/my-config/clang-format.py<CR>i

map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

