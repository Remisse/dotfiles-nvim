return {
    -- vscode.nvim color scheme
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        priority = 1000
    },
    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.1",
        dependencies = { "nvim-lua/plenary.nvim" }
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
    -- LSP Zero
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x"
    },
    -- LSP Support
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "L3MON4D3/LuaSnip",
    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
    },
    -- cmp sources plugins
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    -- Autopairs
    {
        "windwp/nvim-autopairs",
        opts = {
            fast_wrap = {},
            disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
            require("nvim-autopairs").setup(opts)

            local cmp_autopairs = require "nvim-autopairs.completion.cmp"
            require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },
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
}
