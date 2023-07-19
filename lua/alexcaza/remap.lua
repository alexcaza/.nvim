-- Open built-in file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move higlighted lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Buffers
vim.keymap.set("n", "<leader>bl", ":ls<Enter>")
vim.keymap.set("n", "<leader>bn", ":bnext<Enter>")
vim.keymap.set("n", "<leader>bp", ":bprev<Enter>")

-- Line numbers
vim.keymap.set("n", "<leader>rn", ":set relativenumber!<Enter>")

-- Lazygit
vim.keymap.set("n", "<leader>gg", ":LazyGit<Enter>")

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>")

