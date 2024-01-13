return {
    -- {
    --     "echasnovski/mini.base16",
    --     opts = {
    --         palette = {
    --             base00 = '#181818',
    --             base01 = '#282828',
    --             base02 = '#383838',
    --             base03 = '#585858',
    --             base04 = '#b8b8b8',
    --             base05 = '#d8d8d8',
    --             base06 = '#e8e8e8',
    --             base07 = '#f8f8f8',
    --             base08 = '#ab4642',
    --             base09 = '#dc9656',
    --             base0A = '#f7ca88',
    --             base0B = '#a1b56c',
    --             base0C = '#86c1b9',
    --             base0D = '#7cafc2',
    --             base0E = '#ba8baf',
    --             base0F = '#a16946'
    --         }
    --     }
    -- },
    {
        'rebelot/kanagawa.nvim',
        opts = function()
            -- Default options:
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        wave = {},
                        lotus = {},
                        dragon = {},
                        all = {
                            ui = {
                                float = {
                                    bg = "none",
                                },
                            },
                        }
                    },
                },
                overrides = function(colors) -- add/modify highlights
                    return {
                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },
                    }
                end,
                theme = "wave",      -- Load "wave" theme
                background = {       -- map the value of 'background' option to a theme
                    dark = "dragon", -- try "dragon" !
                    light = "lotus"
                },
            })

            -- setup must be called before loading
            vim.cmd("colorscheme kanagawa")
        end
    }
}
