return {
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',   
  'folke/tokyonight.nvim',   
  'sbdchd/neoformat',
  'Shobhit-Nagpal/nvim-rafce',
  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
    dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
      -- Autocompletion
      'hrsh7th/nvim-cmp',     -- Required
      'hrsh7th/cmp-nvim-lsp', -- Required
      'L3MON4D3/LuaSnip',     -- Required
      'williamboman/mason-lspconfig.nvim',
    }
  }
},

  { 'rose-pine/neovim', name = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  },

  { 'nyoom-engineering/oxocarbon.nvim', name = 'oxocarbon',
    config = function()
      vim.cmd('colorscheme oxocarbon')
    end
  },

  {
    'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate'
  },

   {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  },
}
