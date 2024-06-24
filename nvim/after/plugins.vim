" =========================================================================
" Gestores de plugins
" ==========================================================================

" Usar Plug como gestor de plugins
" Instalar plugins con Plug
call plug#begin("~/.config/nvim/plugged")
  " nvim-autopairs
  Plug 'windwp/nvim-autopairs'
  Plug 'rose-pine/vim'
  Plug 'Luxed/ayu-vim' 
  Plug 'folke/tokyonight.nvim'
  Plug 'olimorris/onedarkpro.nvim'
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'tinted-theming/base16-vim'
  Plug 'Mofiqul/vscode.nvim'
  " Plug 'fedepujol/bracketpair.nvim'
  " Essential plugins for web development"
  Plug 'junegunn/vim-plug'
  Plug 'dyng/ctrlsf.vim' 
  Plug 'junegunn/vim-peekaboo'
  " Plug 'xiyaowong/nvim-transparent'
  Plug 'lmburns/kimbox'
  Plug 'EdenEast/nightfox.nvim' 
  Plug 'jiangmiao/auto-pairs'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'stevearc/dressing.nvim'
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'sheerun/vim-polyglot'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'nvimtools/none-ls.nvim'
  Plug 'jay-babu/mason-null-ls.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'mfussenegger/nvim-lint'
  " Plug 'm00qek/baleia.nvim', { 'tag': 'v1.4.0' }
  Plug 'dense-analysis/ale'                   " Linting y formateo
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'MunifTanjim/nui.nvim'
  " Plug 'samodostal/image.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-neo-tree/neo-tree.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
  " Plug 'https://github.com/adelarsq/image_preview.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
  Plug 'nvim-telescope/telescope-media-files.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-pyright']
  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } 
  Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }
   " javascript
  Plug 'jelera/vim-javascript-syntax'
  Plug 'othree/yajs.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'tpope/vim-surround'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'terryma/vim-multiple-cursors'
call plug#end()

