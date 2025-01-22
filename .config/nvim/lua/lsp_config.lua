local nvim_lsp = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Initialize Mason
mason.setup()

-- Ensure servers are installed
mason_lspconfig.setup({
    ensure_installed = {
        'ts_ls',  -- Updated from 'tsserver' to 'ts_ls'
        'eslint',
        'jsonls',
        'html',
        'cssls',
        'pyright',
        'gopls',
        'jdtls',
        'lua_ls',
        'clangd',
        'elixirls',
        'marksman',
    },
})

-- Common on_attach function to map LSP-related keybindings after LSP server attaches to current buffer
local on_attach = function(_, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    local opts = { noremap = true, silent = true }

    -- LSP Keybindings
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', 'gk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

-- Set up each server once Mason has initialized
mason_lspconfig.setup_handlers {
    function(server_name)
        local config = {
            on_attach = on_attach,
            flags = {
                debounce_text_changes = 150,
            },
            capabilities = capabilities,
        }

        -- Custom handler for ts_ls (TypeScript LSP) to suppress specific warnings
        if server_name == "ts_ls" then
            config.handlers = {
                ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
                    -- Ensure `ctx` and `ctx.bufnr` are valid before proceeding
                    --local bufnr = ctx and ctx.bufnr
                    --if not bufnr or not vim.api.nvim_buf_is_valid(bufnr) then
                    --    vim.schedule(function()
                    --        vim.notify("[LSP] Warning: Invalid buffer number in diagnostics", vim.log.levels.WARN)
                    --    end)
                    --    return
                    --end

                    -- Filter out unwanted TypeScript diagnostics
                    result.diagnostics = vim.tbl_filter(function(diagnostic)
                        return not diagnostic.message:match("Could not find a declaration file for module")
                            and not diagnostic.message:match("it may be converted to an ES module")
                    end, result.diagnostics)

                    vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)

                    -- Safely set diagnostics using `vim.schedule_wrap`
                    --vim.schedule_wrap(function()
                    --    local namespace = vim.diagnostic.get_namespace(ctx.client_id)
                    --    vim.diagnostic.set(namespace, bufnr, result.diagnostics, config)
                    --end)()
                end,
            }
        end

        -- Fix on save for ESLint
        if server_name == "eslint" then
            config.on_attach = function(client, bufnr)
                on_attach(client, bufnr)
                vim.api.nvim_create_autocmd("BufWritePre", {
                    buffer = bufnr,
                    command = "EslintFixAll",
                })
            end
            config.settings = {
                codeAction = {
                    disableRuleComment = {
                        enable = true,
                        location = "separateLine",
                    },
                    showDocumentation = {
                        enable = true,
                    },
                },
            }
        end

        -- Lua language server for Neovim development
        if server_name == "lua_ls" then
            config.settings = {
                Lua = {
                    runtime = { version = "LuaJIT" },
                    diagnostics = { globals = { "vim" } },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = { enable = false },
                },
            }
        end

        -- Detect the OS and set the correct path for `elixir-ls`
        local elixir_ls_path

        if vim.fn.has("mac") == 1 then
            elixir_ls_path = "/opt/homebrew/bin/elixir-ls" -- macOS (Homebrew)
        elseif vim.fn.has("unix") == 1 then
            elixir_ls_path = "/usr/bin/elixir-ls" -- Linux (Arch, Manjaro, etc.)
        end

        -- elixir language server
        if server_name == "elixirls" then
            config.cmd = { elixir_ls_path }
            config.settings = {
                elixirls = {
                    dialyzerenabled = true,
                    fetchdeps = false,
                },
            }
        end

        -- Setup the LSP server with the configuration
        nvim_lsp[server_name].setup(config)
    end,
}

