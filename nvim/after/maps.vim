" ==========================================================================================================================
" Atajos de teclado y configuraciones adicionales
" ==========================================================================================================================

" Desactivar el modo ratón y asignar un líder de mapeo personalizado
let mapleader = ","

" Configuración para Prettier
let g:prettier#exec_cmd = 'prettier'
let g:prettier#config#config_files = ['package.json', '.prettierrc', '.prettierrc.json', '.prettierrc.yml', '.prettierrc.yaml', '.prettierrc.js', '.prettierrc.cjs', 'prettier.config.js', 'prettier.config.cjs']
let g:prettier#autoformat = 1

" Configuración para Intelephense
let g:intelephense#enable_on_startup = 1

" MULTICURSORS
let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<->'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

noremap <S-N> <Plug>(multicursor-prior)

" Find files using Telescope command-line sugar - lua functions.
nnoremap <leader>pf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-g> <cmd>lua require('telescope.builtin').git_grep()<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>

" Configuración para NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" fzf
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-s': 'split',
"  \ 'ctrl-v': 'vsplit'
"\}
nnoremap <leader>f :FZF<CR>


" Abrir terminal con Ctrl+e
" Uso zsh en lugar de bash
nnoremap <c-e> :call OpenTerminal()<CR>

" Asignación de teclas para abrir la terminal flotante"
map <Leader>zt :call OpenTerminalFlotante()<CR>

" vim . redirect
nnoremap <leader>pv :Ex<CR>

" copy files
noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

" Mapeo para formatear CSS con Prettier
nnoremap <leader>pc :%! /home/giancarlo/.nvm/versions/node/v18.10.0/bin/prettier --parser css<CR>
" Mapeo para formatear HTML con Prettier
nnoremap <leader>ph :%! /home/giancarlo/.nvm/versions/node/v18.10.0/bin/prettier --parser html<CR>
" Mapeo para formatear Blade.php con Prettier
nnoremap <leader>pb :%! /home/giancarlo/.nvm/versions/node/v18.10.0/bin/prettier --parser html --stdin-filepath .blade.php<CR>
" Mapeo para formatear JavaScript con Prettier
nnoremap <leader>pj :%! /home/giancarlo/.nvm/versions/node/v18.10.0/bin/prettier --parser babel<CR>

" Atajo de teclado para abrir Neotree
nnoremap <C-q> :Neotree<CR>
nnoremap <leader>o :NERDTreeToggle<CR>  

" Atajos de teclado para acciones comunes
nnoremap <C-s> :w<CR>  " Guardar el archivo actual
nnoremap <C-p> :bprev<CR>  " Cambiar al archivo anterior
nnoremap <C-m> :bnext<CR>  " Cambiar al siguiente archivo

" Coc Explorer
" :nmap <C-c> <Cmd>CocCommand explorer<CR>

" Configuración de atajo de teclado para abrir NERDTree
" nnoremap <C-q> :NERDTreeToggle<CR>

" Mapea la función prompt_for_input a un atajo de teclado
nnoremap <leader>i :lua prompt_for_input()<CR>

" Mapea la función prompt_for_selection a un atajo de teclado
nnoremap <leader>s :lua prompt_for_selection()<CR>

" Mapea la función de renombrado a un atajo de teclado
nnoremap <leader>rn :lua lsp_rename()<CR>

