return {
    -- gruber-darker color scheme
    {
        "blazkowolf/gruber-darker.nvim",
        lazy = false,
        priority = 1000,
    },
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = 'v0.2.1',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false
    },
    -- Undotree
    {
        "mbbill/undotree",
        lazy = false
    },
    -- Vim-Fugitive
    "tpope/vim-fugitive",
    -- LSP Support
    "neovim/nvim-lspconfig",
    -- Clangd Extensions
    {
        "p00f/clangd_extensions.nvim",
        lazy = false,
    },
    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^4', -- Recommended
        lazy = false,   -- This plugin is already lazy
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    {
        "nvim-tree/nvim-web-devicons",
        opts = {}
    },
    -- Blink
    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = "default",
                ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
                ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
                -- ["<Esc>"] = { "hide", "fallback" },
                ["<PageUp>"] = { "scroll_documentation_up", "fallback" },
                ["<PageDown>"] = { "scroll_documentation_down", "fallback" },
            },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = {
                accept = {
                    auto_brackets = { enabled = false, },
                },
                documentation = { auto_show = true }
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            zen = {
                enabled = true,
                toggles = {
                    dim = false,
                    git_signs = false,
                    mini_diff_signs = false,
                    -- diagnostics = false,
                    -- inlay_hints = false,
                },
                win = {
                    backdrop = { transparent = false, blend = 99 },
                    width = 86,
                },
            },
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    }
}
