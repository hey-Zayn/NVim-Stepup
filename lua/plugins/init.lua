return {
  -- =============================================
  -- UI & Themes
  -- =============================================
  { import = "plugins.ui" },

  -- =============================================
  -- LSP & Completion
  -- =============================================
  { import = "plugins.lsp" },

  -- =============================================
  -- Development Tools
  -- =============================================
  { import = "plugins.tools" },

  -- =============================================
  -- Language Support (SIMPLIFIED)
  -- =============================================
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "javascript", "typescript", "lua", "vim",
          "json", "html", "css", "markdown"
        },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}