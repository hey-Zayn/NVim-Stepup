-- Essential core plugins
return {
  -- Package manager
  {
    "folke/lazy.nvim",
    tag = "stable",
  },

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
  },

  -- Icons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
}