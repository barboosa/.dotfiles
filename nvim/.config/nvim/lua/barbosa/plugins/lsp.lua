return {
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')

            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end)
            require('lspconfig').lua_ls.setup({})
            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "omnisharp",
                },

                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        require('lspconfig').lua_ls.setup({})
                        require('lspconfig').omnisharp.setup({})
                    end,
                },
            })
        end
    },
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'}
}
