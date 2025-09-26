return {
  -- Enhanced syntax highlighting for MERN stack
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          -- MERN Stack core
          "javascript", 
          "typescript",
          "tsx",          -- For React components
          "jsdoc",        -- JavaScript documentation
          "json",
          "jsonc",
          
          -- Web technologies
          "html",
          "css", 
          "scss",         -- Sass/SCSS support
          "markdown",     -- README files
          "yaml",         -- Configuration files
          
          -- Tools you actually use
          "bash",         -- Shell scripts
          "gitignore",    -- Git ignore files
          "regex",        -- Regular expressions
          
          -- Essential config files
          "lua",          -- NeoVim config
          "vim",          -- Vim script
          "vimdoc",       -- Help files
        },
        sync_install = false,
        auto_install = true,
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end,
  },

  -- MERN-specific language support
  {
    "pangloss/vim-javascript",
    ft = { "javascript", "javascriptreact" }
  },
  
  {
    "leafgarland/typescript-vim",
    ft = { "typescript", "typescriptreact" }
  },
  
  {
    "maxmellon/vim-jsx-pretty",
    ft = { "javascriptreact", "typescriptreact" }
  },
}