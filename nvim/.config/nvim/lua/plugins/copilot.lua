return {
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
    {
        'saghen/blink.cmp',
        optional = true,
        dependencies = { 'fang2hou/blink-copilot' },
        opts = {
            sources = {
                default = { 'copilot' },
                providers = {
                    copilot = {
                        name = 'copilot',
                        module = 'blink-copilot',
                        score_offset = -10,
                        async = true,
                    },
                },
            },
        },
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
        build = 'make tiktoken', -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
            mappings = {
                reset = {
                    normal = '<M-r>',
                    insert = '<M-r>',
                },
            },
        },
        -- See Commands section for default commands if you want to lazy load on them
        vim.keymap.set('n', '<M-i>', function()
            require('CopilotChat').toggle()
        end),
    },
}
