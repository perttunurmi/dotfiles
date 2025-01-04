return {
    { 'HiPhish/rainbow-delimiters.nvim' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    {
        'tpope/vim-fugitive',
        vim.keymap.set('n', '<leader>g', vim.cmd.Git),
    },
    {
        'mbbill/undotree',
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
    },
}
