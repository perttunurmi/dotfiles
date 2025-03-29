vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
    Vscode = true
else
    Vscode = false
    require 'config.lazy'
    require 'config.colors'
end

require 'config.settings'
require 'config.keymaps'

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('custom-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Makes yanking work on Wsl2
local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures
-- vim.g.clipboard = 'osc52'
