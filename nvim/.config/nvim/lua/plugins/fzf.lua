return {
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { "<leader>sf", "<cmd>FzfLua files<cr>",    desc = "Find files" },
            { "<leader>sb", "<cmd>FzfLua buffers<cr>",  desc = "Find buffers" },
            { "<leader>sj", "<cmd>FzfLua marks<cr>",    desc = "Find marks" },
            { "<leader>sq", "<cmd>FzfLua quickfix<cr>", desc = "Find quickfix" },
            { "<leader>ss", "<cmd>FzfLua<cr>",          desc = "Find quickfix" },
        },
    },
}
