return {
    { 'HiPhish/rainbow-delimiters.nvim' },
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        keys = {
            { "<leader>sf", "<cmd>FzfLua files<cr>",    desc = "Find files" },
            { "<leader>sb", "<cmd>FzfLua buffers<cr>",  desc = "Find buffers" },
            { "<leader>sj", "<cmd>FzfLua marks<cr>",    desc = "Find marks" },
            { "<leader>sq", "<cmd>FzfLua quickfix<cr>", desc = "Find quickfix" },
        },
    },
    {
        'tpope/vim-fugitive',
        vim.keymap.set('n', '<leader>g', vim.cmd.Git),
    },
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },
}
