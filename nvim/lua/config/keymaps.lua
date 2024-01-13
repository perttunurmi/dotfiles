vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

vim.keymap.set('n', '<M-k>', '<cmd>cnext<CR>')
vim.keymap.set('n', '<M-j>', '<cmd>cprev<CR>')

vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y') -- Copy to clipboard
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p') -- Paste from clipboard

-- Move regions in visual mode and keep the selection after move
vim.keymap.set('v', '<S-J>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<S-K>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<C-w>c', ':tabnew<CR>') -- Same as in Tmux

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>w', ':w <CR>')

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
