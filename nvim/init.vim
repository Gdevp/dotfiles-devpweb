" ==========================================================================
" Configuraciones generales
" ==========================================================================
filetype plugin indent on
set fileformat=unix
 
" Mostrar archivos ocultos
set hidden

set cursorline
set showmatch

" Usar UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Habilitar resaltado de sintaxis y números de línea
syntax enable

set numberwidth=1

" Mostrar números de línea
set number

" Resaltar la sintaxis
syntax on

set ruler

" Activar autocompletado y ajustar la sangría con espacios
set autoindent

" Autocompletar palabras
set smartindent

" Usar pestañas para sangrar
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Desactivar el modo mouse
set mouse=a

" open new split panes to right and below
set splitright
set splitbelow

if !has('gui_running')
  set t_Co=256
  set termguicolors
endif

set showcmd
set noshowmode

" Configuración del portapapeles
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

set laststatus=2
highlight Normal ctermbg=NONE
" =============================================================================================================

" colorscheme tokyonight

so ~/.config/nvim/after/plugins.vim
so ~/.config/nvim/after/configs.vim
so ~/.config/nvim/after/maps.vim

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ============================================================================================================

lua << END
--require('transparent').clear_prefix('lualine')
--require('transparent').clear_prefix('Neotree')
--require('transparent').clear_prefix('BufferLine')
--require('transparent').clear_prefix('Telescope')
--require("transparent").setup({ -- Optional, you don't have to run setup.
--  groups = { -- table: default groups
--    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
--    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
--    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
--    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
--    'EndOfBuffer',
--  },
--  extra_groups = {}, -- table: additional groups that should be cleared
--  exclude_groups = {}, -- table: groups you don't want to clear
--})

-- require('bufferline').setup{}
require('gitsigns').setup()
require("toggleterm").setup()
require('dressing').setup({
  input = {
    win_options = {
      winhighlight = 'NormalFloat:DiagnosticError',
    }
  }, 
  select = {
    backend = { 'telescope', 'builtin' },
    telescope = require('telescope.themes').get_cursor(),
  },
})

function _G.prompt_for_input()
  local input = vim.fn.input('Enter something: ')
  print('You entered: ' .. input)
end

function _G.prompt_for_selection()
  local options = { 'Option 1', 'Option 2', 'Option 3' }
  vim.ui.select(options, {
    prompt = 'Select an option:',
  }, function(choice)
    if choice then
      print('You selected: ' .. choice)
    else
      print('You canceled the selection')
    end
  end)
end

--Define la función de renombrado LSP usando dressing.nvim
function _G.lsp_rename()
  local curr_name = vim.fn.expand('<cword>')
  vim.ui.input({ prompt = 'Rename to: ', default = curr_name }, function(new_name)
    if not new_name or #new_name == 0 then
      return
    end
    vim.lsp.buf.rename(new_name)
  end)
end


require('lualine').setup({
options = {
    --theme = "nord",
    theme = "vscode",
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = {
      statusline = {'NvimTree'}
    }
  },
})

require('telescope').setup({})
require('nvim-autopairs').setup()
require('nvim-treesitter.configs').setup {
    ensure_installed = { 
        'javascript',
        'typescript',
        'css',
        'json',
        'python',
        'lua',
        "vim", 
        "vimdoc", 
        "query",
        "php"
    },
    highlight = {
        enable = true, -- Activar el resaltado de Tree-sitter
        additional_vim_regex_highlighting = false,
    }, 
    indent = {
        enable = true
    },
    autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "html" , "xml" },
	}
}

require("mason").setup()
require("mason-lspconfig").setup()

--require("tokyonight").setup({
--  -- use the night style
--  style = "night",
--  -- disable italic for functions
--  styles = {
--    functions = {}
--  },
--  sidebars = { "qf", "vista_kind", "terminal", "packer" },
--  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--  on_colors = function(colors)
--    colors.hint = colors.orange
--    colors.error = "#ff0000"
--  end
--})

require("mason-null-ls").setup({
    ensure_installed = nil,
    automatic_installation = true,
})

require('lint').linters_by_ft = {
  javascript = {'eslint_d'},
  typescript = {'eslint_d'},
  python = {'pylint'}

}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave", "TextChanged" }, {
    group = lint_augroup,
    callback = function()
    require("lint").try_lint()
  end,
})

require("neo-tree").setup({
  window  = {
    -- Abrir en la parte derecha
    position = 'right',
  },
})



require('vscode').setup({
    -- Enable italic comment
    italic_comments = true,

    -- Underline `@markup.link.*` variants
    underline_links = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,
})
vim.o.background = 'dark'
-- Configura el esquema de colores
--vim.cmd[[colorscheme tokyonight-night]]
vim.cmd[[colorscheme vscode]]

END
