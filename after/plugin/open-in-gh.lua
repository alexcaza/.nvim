-- Open current file in github UI
vim.api.nvim_set_keymap("n", "<Leader>go", ":OpenInGHFile <CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<Leader>go", ":OpenInGHFileLines <CR>", { silent = true, noremap = true })
