local lsp_zero = require('lsp-zero')
local lsp = lsp_zero.preset({})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

local lspconfig = require('lspconfig')

lspconfig.glslls.setup {
    cmd = { "glslls", "--stdin", "--target-env=opengl" },
}
lspconfig.ccls.setup {
    on_attach = function(_, bufnr)
        vim.lsp.inlay_hint(bufnr, true)
    end,
}

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup(require("config.mason-conf"))

require('cmp').setup(require("config.cmp-conf"))
