vim.lsp.config['clangd'].cmd = {
    -- From https://github.com/fitrh/init.nvim
    -- see clangd --help-hidden
    "clangd",
    "--background-index",
    -- by default, clang-tidy use -checks=clang-diagnostic-*,clang-analyzer-*
    -- to add more checks, create .clang-tidy file in the root directory
    -- and add Checks key, see https://clang.llvm.org/extra/clang-tidy/
    "--clang-tidy",
    "--completion-style=bundled",
    "--cross-file-rename",
    "--header-insertion=iwyu",
    "--pretty",
}

-- 'rust_analyzer' is launched automatically by rustaceanvim
local lss = { 'bashls', 'clangd', 'lua_ls', 'marksman', 'metals', 'vue_ls', 'yamlls', 'zls' }
for _, ls in ipairs(lss) do
    vim.lsp.enable(ls)
end
