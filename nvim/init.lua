vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require 'config'

if vim.g.vscode then
    return 0
end

-- WSL Clipboard
require 'lib.is_wsl'
if IS_WSL() then
    require 'wsl'
end

-- if there are problems deleting ~/.local/share/nvim/lazy/lazy.nvim might help
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    install = { colorscheme = { "default" } },
    checker = { enabled = false },
})

vim.cmd("colorscheme default")
vim.cmd.hi 'Normal guibg=none'
vim.cmd.hi 'NormalFloat guibg=none'
vim.cmd.hi 'NormalNC guibg=none'
vim.cmd.hi 'MsgArea guibg=none'

vim.cmd.hi 'Visual guifg=black guibg=lightblue'
vim.cmd.hi 'String guifg=#28af38'
vim.cmd.hi 'Function guifg=#21C992'
vim.cmd.hi 'Identifier guifg=#00A3F2'
