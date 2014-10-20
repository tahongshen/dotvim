""""""""""""""""""""""""""""""""""""""""
"
""            quick escape
"
"""""""""""""""""""""""""""""""""""""""""
" set quick escape from insert mode, and now I can go without arrow keys and
" use j and k to move around in insert mode
imap jj <esc>



"""""""""""""""""""""""""""""""""""""""""
"
""       CtrlP
"
"""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'
let g:ctrlp_by_filename = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }



""""""""""""""""""""""""""""""""""""""""
"
""       auto-save
"
"""""""""""""""""""""""""""""""""""""""""
" let g:auto_save = 1




""""""""""""""""""""""""""""""""""""""""
"
""       for Mac
"
"""""""""""""""""""""""""""""""""""""""""
" vim run in Mac terminal, does not have syntax highlighting without this
syntax on




""""""""""""""""""""""""""""""""""""""""
"
""             pathogen
"
"""""""""""""""""""""""""""""""""""""""""
" doorkeeper of all my vim plugins
call pathogen#infect()




""""""""""""""""""""""""""""""""""""""""
"
""             filetype
"
"""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugin
" for i_Ctrl-X_Ctrl-O
filetype plugin on
 


""""""""""""""""""""""""""""""""""""""""
"
""             indent
"
"""""""""""""""""""""""""""""""""""""""""
" check :h filetype-indent-on
" have proper indent level based on syntax
" `=` also depends on this to work
filetype indent on

" if you use <tab> to indent the code
" vim use tabs other than spaces for the indentaion
" expandtab will turn a tab into 'tabstop' spaces
set expandtab
set tabstop=2

" if you use '>' or <c-t> to indent the code, this matters
" this default to 8
set shiftwidth=2

" you can also set different indent level for other languages
autocmd FileType c setlocal shiftwidth=4 tabstop=4




""""""""""""""""""""""""""""""""""""""""
"
""             buffers
"
"""""""""""""""""""""""""""""""""""""""""
set hidden "in order to switch between buffers with unsaved change 
map <s-tab> :bp<cr>
map <tab> :bn<cr>
map ,bd :bd<cr>

