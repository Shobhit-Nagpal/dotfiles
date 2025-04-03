return {
  'nvim-lua/plenary.nvim',
  'sbdchd/neoformat',
  {'Shobhit-Nagpal/nvim-rafce',
  config = function()
    require('rafce')
  end,
  },
   {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  },
}
