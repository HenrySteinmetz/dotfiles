-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-web-devicons'
  -- Editor
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  -- Multi cursor 
  use 'terryma/vim-multiple-cursors'

  -- Completion
  use {'ms-jpq/coq_nvim', branch = 'coq'}
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Vsnip
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }

  -- LSP installer
  use {
    "williamboman/mason-lspconfig.nvim",
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }

  -- Syntax
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'NvChad/nvim-colorizer.lua'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- File manager
  use 'nvim-tree/nvim-tree.lua'

  -- Lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- Startup
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- Keybind helper
  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {}
  end
  }

  -- Rust
  use 'simrat39/rust-tools.nvim'

  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  -- Eww
  use 'elkowar/yuck.vim'

  -- Obsidian
  use({
    "epwalsh/obsidian.nvim",
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    config = function()
      require("obsidian").setup({
        dir = "~/Todo",

        -- see below for full list of options 👇
      })
    end,
  })
 -- Cpp
  use "Shatur/neovim-tasks"
  -- Nim
--  use "alaviss/nim.nvim"
--  use 'prabirshrestha/asyncomplete.vim'
--  use 'prabirshrestha/asyncomplete-lsp.vim'
--  use 'prabirshrestha/async.vim'
--  use 'prabirshrestha/vim-lsp'
--  use 'mattn/vim-lsp-settings'

  -- Tabnine
   	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  -- Nu
   use 'LhKipp/nvim-nu'
  -- Bspwm
  use "baskerville/vim-sxhkdrc"
end)
