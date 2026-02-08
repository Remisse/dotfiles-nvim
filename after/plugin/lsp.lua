-- 'rust_analyzer' is launched automatically by rustaceanvim
local lss = { 'bashls', 'clangd', 'lua_ls', 'metals', 'vue_ls', 'yamlls', 'zls' }
for _, ls in ipairs(lss) do
    vim.lsp.enable(ls)
end
