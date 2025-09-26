-- NeoVim MERN Stack Development Environment
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load core configurations safely
local ok, _ = pcall(require, "config.options")
if not ok then
  -- Fallback basic options
  vim.opt.number = true
  vim.opt.relativenumber = false
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.termguicolors = true
end

pcall(require, "config.keymaps")
pcall(require, "config.autocmds")

-- Plugin Manager Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("🚀 Installing plugin manager...")
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins with error handling
local ok, lazy = pcall(require, "lazy")
if ok then
  lazy.setup("plugins", {
    ui = { backdrop = 100 },
    change_detection = { enabled = false },
  })
end

print("✅ NeoVim MERN Environment loaded!")