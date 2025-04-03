return {
  {"folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      })
      vim.cmd.colorscheme("tokyonight")
    end
  },
  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
  }
}
