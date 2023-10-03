require('vscode').setup(require("config.vscode-conf"))

function SetColorScheme(color)
    color = color or 'vscode'
    vim.cmd.colorscheme(color)
end

SetColorScheme()

