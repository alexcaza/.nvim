local tree = require("nvim-tree")

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

tree.setup({
    on_attach = my_on_attach,
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = true,
                modified = true,
            }
        }
    }
});

function toggle_tree_at_current_file() 
    local api = require("nvim-tree.api")
    api.tree.toggle({find_file=true})
end

vim.keymap.set('n', '<leader>ft', toggle_tree_at_current_file);
