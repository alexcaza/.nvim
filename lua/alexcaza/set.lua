-- General editor settings
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs & spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Undo & backup
vim.opt.swapfile = false
vim.opt.backup = false
-- let undo tree see far into the past
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Searching
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Scrolling
vim.opt.scrolloff = 8

-- Refresh
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Global mapping
vim.g.mapleader = " "
