local bufn = vim.api.nvim_get_current_buf()
local file = vim.api.nvim_buf_get_name(bufn)

vim.keymap.set('n', '<F5>', function()
    command = '!python ' .. file
    vim.cmd(command)
end)
