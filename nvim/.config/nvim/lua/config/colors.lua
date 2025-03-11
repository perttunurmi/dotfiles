vim.cmd.colorscheme 'default'
-- vim.cmd.colorscheme 'adwaita'
vim.cmd.colorscheme 'monokai'


Colors = function()
    -- Normal
    vim.cmd.hi 'Normal guibg=none'
    vim.cmd.hi 'NormalFloat guibg=none'
    vim.cmd.hi 'NormalNC guibg=none'
    vim.cmd.hi 'NormalNb guibg=none'
    vim.cmd.hi 'NormalSB guibg=none'
    vim.cmd.hi 'ColorColumn guibg=darkred'
    vim.cmd.hi 'LineNr guibg=none'
    vim.cmd.hi "SignColumn guibg=none"
    -- vim.cmd.hi 'SignColumn guibg=none'
    vim.cmd.hi 'Type guifg=SeaGreen'
    vim.cmd.hi 'Constant gui=bold guifg=nvimlightred'
    vim.cmd.hi '@variable guifg=nvimwhite'
    vim.cmd.hi 'Statement guifg=#A33F3F'
    vim.cmd.hi 'Function guifg=nvimlightred'
    vim.cmd.hi 'Special gui=bold'

    vim.cmd.hi 'TelescopeNormal guibg=none'
    vim.cmd.hi 'TelescopeBorder guibg=none'

    -- Netrw colors
    vim.cmd.hi 'Directory guifg=pink'
    vim.cmd.hi 'NetrwClassify guifg=white'

    -- Diagnostics
    vim.cmd.hi 'DiagnosticHint guibg=#212121'
    vim.cmd.hi 'DiagnosticWarn guibg=#212121'
    vim.cmd.hi 'DiagnosticError guibg=#212121'
end

Colors()
