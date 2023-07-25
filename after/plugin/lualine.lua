local lualine = require('lualine')

lualine.setup({
    options = {
        icons_enabled = false
    },
    sections = {
        lualine_a = {
            'branch',
            'filename'
        },
        lualine_b = {
            'buffers'
        },
        lualine_c = {
            "require('lsp-progress').progress()"
        }
    }
})
