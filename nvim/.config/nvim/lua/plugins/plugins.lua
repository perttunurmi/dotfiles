return {
    { 'HiPhish/rainbow-delimiters.nvim' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    { 'tpope/vim-sleuth' },

    {
        'wakatime/vim-wakatime',
        lazy = false,
    },

    {
        'tpope/vim-fugitive',
        vim.keymap.set('n', '<leader>gg', vim.cmd.Git),
    },
    {
        'mbbill/undotree',
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
    },
}
