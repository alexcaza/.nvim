local lsp = require('lsp-zero')

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.ensure_installed({
    -- tsserver is handled in typescript.lua
	-- 'tsserver',
    'json',
	'eslint',
	'rust_analyzer',
	'clojure_lsp',
    'rubocop',
    'ruby_ls',
    'cssmodules_ls',
    'cssls'
})

local cmp = require('cmp')
local cmp_select = {behaviour = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-Enter>'] = cmp.mapping.confirm( {select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

    vim.cmd([[autocmd CursorHold   * silent! lua vim.lsp.buf.document_highlight()]])
    vim.cmd([[autocmd CursorHoldI  * silent! lua vim.lsp.buf.document_highlight()]])
    vim.cmd([[autocmd CursorMoved  * lua vim.lsp.buf.clear_references()]])
    vim.cmd([[autocmd CursorMovedI * lua vim.lsp.buf.clear_references()]])

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
