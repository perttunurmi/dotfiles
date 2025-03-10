return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            require("lspconfig").lua_ls.setup { capabilities }
            require("lspconfig").pyright.setup { capabilities }
            require("lspconfig").ts_ls.setup { capabilities }
            require("lspconfig").html.setup { capabilities }
            require("lspconfig").jsonls.setup { capabilities }
            require("lspconfig").texlab.setup { capabilities }
            require("lspconfig").cssls.setup { capabilities }
            require("lspconfig").css_variables.setup { capabilities }
            require("lspconfig").cssmodules_ls.setup { capabilities }
            require("lspconfig").tailwindcss.setup { capabilities }
            require("lspconfig").yamlls.setup { capabilities }
            require("lspconfig").bashls.setup { capabilities }
            require("lspconfig").ccls.setup { capabilities }
            require("lspconfig").jdtls.setup { capabilities }

            vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format() end)
            vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
        end,


    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "rust_analyzer" },
            }
        end
    },
    {
        "neovim/nvim-lspconfig"
    },
}
