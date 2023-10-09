local cmp = require('cmp')
local lsp_zero = require("lsp-zero")
local cmp_action = lsp_zero.cmp_action()

return {
    formatting = lsp_zero.cmp_format(),
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
    },
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.recently_used,
            require("clangd_extensions.cmp_scores"),
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
}
