return {
  -- Fuzzy finder (VS Code Ctrl+P)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = { width = 0.8, height = 0.8 },
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown",
          },
        },
      })
    end,
  },

  -- Git integration
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
        },
      })
    end,
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- Comments (VS Code style)
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- Surround (wrap text with brackets, quotes, etc.)
  { "tpope/vim-surround" },

  -- Auto-detect tab settings
  { "tpope/vim-sleuth" },
  
  -- Remove these lines (Python/Rust/Go specific):
  -- { "rust-lang/rust.vim" },
  -- { "fatih/vim-go" },
  -- { "python-mode/python-mode" },
}