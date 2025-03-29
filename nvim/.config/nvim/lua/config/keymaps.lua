vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

vim.keymap.set('n', '<M-k>', '<cmd>cnext<CR>')
vim.keymap.set('n', '<M-j>', '<cmd>cprev<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>y', '"+y') -- Copy to clipboard
vim.keymap.set('n', '<leader>p', '"+p') -- Paste from clipboard

-- Move regions in visual mode and keep the selection after move
vim.keymap.set('v', 'J', ':move+2<CR>gv=gv')
vim.keymap.set('v', 'K', ':move-2<CR>gv=gv')

-- TODO: Toggle
vim.keymap.set('n', '<leader>T', function()
    vim.cmd 'vsplit | terminal'
end)

vim.keymap.set('n', '<C-w>c', ':tabnew<CR>') -- Same as in Tmux
