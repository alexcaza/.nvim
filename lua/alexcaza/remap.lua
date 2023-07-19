-- Open built-in file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move higlighted lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Buffers
vim.keymap.set("n", "<leader>ls", ":ls<Enter>")

-- Line numbers
vim.keymap.set("n", "<leader>rn", ":set relativenumber!<Enter>")

-- Lazygit
vim.keymap.set("n", "<leader>gg", ":LazyGit<Enter>")
