autocmd FileType c ClangFormatAutoEnable
let g:clang_format#style_options = {
         \ "ColumnLimit": 120,
         \ "Standart": "C++17"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

nnoremap <silent> <Leader>a :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>ac :Agc <C-R><C-W><CR>

xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
