vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")
require("config.settings")
require("config.keymaps")
require("config.colors")

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('custom-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})
