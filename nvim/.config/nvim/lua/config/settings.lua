vim.cmd.set 'guicursor+=n-v-c:blinkon500-blinkoff500'
vim.cmd.set 'guicursor+=i:block'

-- vim.opt.updatetime = 200
-- vim.opt.timeoutlen = 300

vim.opt.colorcolumn = '80'
vim.opt.cursorline = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true
vim.opt.wrap = false

vim.opt.cursorline = false
vim.opt.mouse = 'a'

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true -- Best of both worlds

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.diagnostic.config {
    signs = false,
}

local highlight = {
    'RainbowRed',
    'RainbowYellow',
    'RainbowBlue',
    'RainbowOrange',
    'RainbowGreen',
    'RainbowViolet',
    'RainbowCyan',
}
-- local hooks = require 'ibl.hooks'
-- -- create the highlight groups in the highlight setup hook, so they are reset
-- -- every time the colorscheme changes
-- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--   vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
--   vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
--   vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
--   vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
--   vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
--   vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
--   vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
-- end)
--
-- vim.g.rainbow_delimiters = { highlight = highlight }
-- require('ibl').setup { scope = { highlight = highlight } }
--
-- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
