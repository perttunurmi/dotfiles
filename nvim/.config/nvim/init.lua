vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.settings")
require("config.keymaps")
require("config.colors")
require("config.lazy")

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('custom-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})

vim.api.nvim_create_autocmd('TermOpen', {
    group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
        vim.opt.signcolumn = 'no'
    end,
})

local job_id = 0
vim.keymap.set("n", "<space>st", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 5)

    job_id = vim.bo.channel
end)

vim.keymap.set("n", "<space>py", function()
    vim.fn.chansend(job_id, { "python\r\n" })
end)
