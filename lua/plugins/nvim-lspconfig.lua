local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>e',function()
            vim.diagnostic.open_float()
        end)
        vim.keymap.set('n', '<leader>a',function()
            vim.lsp.buf.code_action()
        end)

        -- LUA
        vim.lsp.config["lua_ls"] = {
            cmd = {"lua-language-server"},
            filetypes = {"lua"},
            settings = {
                Lua = {
                    runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
                }
            }
        }
        vim.lsp.enable("lua_ls")

        -- C
        vim.lsp.config["clangd"] = {
            cmd = {"clangd"},
            filetypes = {"c"},
        }
        vim.lsp.enable("clangd")

        -- JS TS
        vim.lsp.config["tsls"] = {
            cmd = {"typescript-language-server", "--stdio"},
            filetypes = {"javascript", "typescript"},
            capabilities = capabilities,
            settings = {
                typescript = {
                    inlayHints = {
                        includeInlayParameterNameHints = "all",
                        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                        includeInlayFunctionReturnTypes = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionParameterTypeHints = true,
                    },
                },
                javascript = {
                    inlayHints = {
                        includeInlayParameterNameHints = "all",
                        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                        includeInlayFunctionReturnTypes = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionParameterTypeHints = true,
                    },
                },
            },
        }
        vim.lsp.enable("tsls")

    end
}

