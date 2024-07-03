" Configuración de formateo automático al guardar
"augroup auto_format
"  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx silent! !prettier --write %
"  autocmd BufWritePre *.html,*.css silent! !prettier --write %
"augroup END

" start terminal in insert mode
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
"
"" Abrir terminal y uso zsh en lugar de bash
"function! OpenTerminal()
"  split term://zsh
"  resize 10
"endfunction

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" configs Ale
" let g:ale_linters = {
" \   'cpp': ['clang', 'gcc'],
" \}
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': ['prettier'],
" \   'cpp': ['clang-format', 'clang-tidy'],
" \}
" let g:ale_cpp_clangformat_executable = 'clang-format'
" let g:ale_cpp_clangformat_options = '--style=Google'
" let g:ale_fix_on_save = 1
" let g:ale_linters_explicit = 1 
" =================================================================================================================================
" Configuraciones de autocierre, autocompletado y formato
" =================================================================================================================================

" Configuración de Coc
" autocmd BufWritePre *.ts silent! call CocAction('format')
autocmd FileType php setlocal ts=4 sts=4 sw=4

"Habilitar autocompletado
" Activar autocompletado con nvim-lspconfig
autocmd FileType * setlocal omnifunc=lsp#complete
" autocmd FileType html,css,javascript autocmd BufEnter * silent! pcall coc#start()
autocmd FileType typescript setlocal omnifunc=typescript#complete#omni
autocmd FileType html,xhtml setlocal omnifunc=htmlcomplete#completeTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType json setlocal omnifunc=jsoncomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" Habilitar autocierre de etiquetas HTML y otros pares de caracteres
let g:auto_pairs = 1

" Activar Neotree
let g:neotree_auto_open = 0 
let g:neotree_show_hidden = 1

" Habilitar nvim-compe
let g:compe = {
  \ 'enabled': v:true,
  \ 'autocomplete': v:true,
  \ }

" Mapeo para formatear el documento actual
let g:coc_global_extensions = ['coc-prettier']


