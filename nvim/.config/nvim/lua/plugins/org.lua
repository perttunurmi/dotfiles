return {
    {
        'nvim-orgmode/orgmode',
        event = 'VeryLazy',
        config = function()
            -- Setup orgmode
            require('orgmode').setup {
                org_agenda_files = '~/orgfiles/**/*',
                org_default_notes_file = '~/orgfiles/refile.org',
                org_startup_folded = 'overview',
                org_startup_indented = true,
            }
        end,
        vim.keymap.set('n', '<leader>ot', ':Org indent_mode<CR>', { noremap = true, silent = true }),
    },
}
