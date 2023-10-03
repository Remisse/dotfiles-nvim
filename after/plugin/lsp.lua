local lsp_zero = require('lsp-zero')
local lsp = lsp_zero.preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

local lspconfig = require('lspconfig')

lspconfig.glslls.setup({
    cmd = { "glslls", "--stdin", "--target-env=opengl" },
})
lspconfig.cmake.setup({})

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            lspconfig.lua_ls.setup(lua_opts)
        end,
    }
})

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
local cmp_format = lsp_zero.cmp_format()

cmp.setup({
    formatting = cmp_format,
    mapping = {
        -- Navigate between completion item
        ['<M-k>'] = cmp.mapping.select_prev_item(),
        ['<M-j>'] = cmp.mapping.select_next_item(),

        -- toggle completion
        ['<M-u>'] = cmp_action.toggle_completion(),

        -- navigate between snippet placeholder
        ['<C-a>'] = cmp_action.luasnip_jump_backward(),
        ['<C-d>'] = cmp_action.luasnip_jump_forward(),

        -- Confirm item
        ['<Tab>'] = cmp.mapping.confirm({select = true}),

        ['<C-Space>'] = cmp.mapping.complete(),
    }
})

