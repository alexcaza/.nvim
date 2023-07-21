local lualine = require('lualine')

lualine.setup({
    options = {
        icons_enabled = false
    },
    sections = {
        lualine_c = {
            "require('lsp-progress').progress()"
        }
    }
})
