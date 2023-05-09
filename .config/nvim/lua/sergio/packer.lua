-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'yorik1984/newpaper.nvim'
  use 'feline-nvim/feline.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'kylechui/nvim-surround'
  use 'lewis6991/gitsigns.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'nvim-neo-tree/neo-tree.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use {
      'windwp/nvim-autopairs',
      config = function() require('nvim-autopairs').setup {} end
  }

  use {
      'abecodes/tabout.nvim',
      config = function()
          require('tabout').setup {
              tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
              backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
              act_as_tab = true, -- shift content if tab out is not possible
              act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
              default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
              default_shift_tab = '<C-d>', -- reverse shift default action,
              enable_backwards = true, -- well ...
              completion = true, -- if the tabkey is used in a completion pum
              tabouts = {
                  {open = "'", close = "'"},
                  {open = '"', close = '"'},
                  {open = '`', close = '`'},
                  {open = '(', close = ')'},
                  {open = '[', close = ']'},
                  {open = '{', close = '}'}
              },
              ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
              exclude = {} -- tabout will ignore these filetypes
          }
      end,
      wants = {'nvim-treesitter'}, -- or require if not used so far
      after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          -- Snippet Collection (Optional)
          {'rafamadriz/friendly-snippets'},

          -- Tmux
          {"christoomey/vim-tmux-navigator", lazy=false},
      }
  }
  end)

