local map = vim.keymap.set

-- =============================================
-- VS Code-like Keybindings
-- =============================================

-- Leader keymaps
map("n", "<leader>q", ":qa<CR>", { desc = "Quit all" })
map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "File explorer" })

-- VS Code Command Palette (Ctrl+Shift+P)
map("n", "<C-S-p>", ":Telescope commands<CR>", { desc = "Command palette" })

-- File operations (VS Code shortcuts)
map("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-f>", ":Telescope live_grep<CR>", { desc = "Search in files" })
map("n", "<C-b>", ":Telescope buffers<CR>", { desc = "Show buffers" })

-- Window management (VS Code style)
map("n", "<C-\\>", ":vsplit<CR>", { desc = "Vertical split" })
map("n", "<C-_>", ":split<CR>", { desc = "Horizontal split" })
map("n", "<C-w>", ":bdelete<CR>", { desc = "Close window" })

-- Navigation between windows
map("n", "<C-h>", "<C-w>h", { desc = "Left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Down window" })
map("n", "<C-k>", "<C-w>k", { desc = "Up window" })
map("n", "<C-l>", "<C-w>l", { desc = "Right window" })

-- Tab management (VS Code-like)
map("n", "<leader>t", ":tabnew<CR>", { desc = "New tab" })
map("n", "<TAB>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-TAB>", ":bprevious<CR>", { desc = "Previous buffer" })

-- =============================================
-- Development Keybindings
-- =============================================

-- LSP keymaps
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
map("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration" })
map("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
map("n", "gr", ":lua vim.lsp.buf.references()<CR>", { desc = "Find references" })
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", { desc = "Hover information" })
map("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" })
map("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol" })
map("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>", { desc = "Format document" })

-- Diagnostic keymaps
map("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous diagnostic" })
map("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", { desc = "Next diagnostic" })
map("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>", { desc = "Show diagnostic" })

-- Debugging (placeholder for future setup)
map("n", "<F5>", ":echo 'Debug start'<CR>", { desc = "Start debugging" })
map("n", "<F9>", ":echo 'Toggle breakpoint'<CR>", { desc = "Toggle breakpoint" })

-- Quality of life
map("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlight" })
map("i", "jj", "<Esc>", { desc = "Quick escape" })