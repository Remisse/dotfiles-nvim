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
    -- Nvim-Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false
    },
    -- Undo Tree
    {
        "mbbill/undotree",
        lazy = false
    },
    -- Vim-Fugitive
    "tpope/vim-fugitive",

    -- LSP Zero
    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
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
    -- autopairing of (){}[] etc
    {
        "windwp/nvim-autopairs",
        opts = {
            fast_wrap = {},
            disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
            require("nvim-autopairs").setup(opts)

            -- setup cmp for autopairs
            local cmp_autopairs = require "nvim-autopairs.completion.cmp"
            require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },

    -- cmp sources plugins
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",

    -- Clangd Extensions
    "p00f/clangd_extensions.nvim",

    -- file managing , picker etc
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    },
}
