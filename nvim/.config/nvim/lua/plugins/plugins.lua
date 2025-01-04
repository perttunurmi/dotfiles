return {
    { 'HiPhish/rainbow-delimiters.nvim' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
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
    {
        'mbbill/undotree',
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle),
    },
    {
        'zbirenbaum/copilot.lua',
        cmd = 'Copilot',
        event = 'InsertEnter',
        config = function()
            require('copilot').setup {
                suggestion = { enabled = false },
                panel = { enabled = false },
            }
        end,
    },
    -- {
    --     'zbirenbaum/copilot-cmp',
    --     config = function()
    --         require('copilot_cmp').setup()
    --     end,
    -- },
    {
        'CopilotC-Nvim/CopilotChat.nvim',
        dependencies = {
            { 'zbirenbaum/copilot.lua' },
            { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
        },
        build = 'make tiktoken',                            -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
        },
        -- See Commands section for default commands if you want to lazy load on them
    },
    {
        "Mofiqul/adwaita.nvim",
        lazy = false,
        priority = 1000,
        -- configure and set on startup
        config = function()
            vim.g.adwaita_darker = false             -- for darker version
            vim.g.adwaita_disable_cursorline = true -- to disable cursorline
            vim.g.adwaita_transparent = true         -- makes the background transparent
            vim.cmd('colorscheme adwaita')
        end
    },
    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end
    },
}
