function SetColorScheme(color)
    color = color or 'gruber-darker'
    vim.cmd.colorscheme(color)
end

SetColorScheme('gruber-darker')

