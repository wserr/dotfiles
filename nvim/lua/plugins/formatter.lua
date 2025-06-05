vim.keymap.set("n", "<leader>f", ":Format<CR>")
vim.keymap.set("n", "<leader>F", ":FormatWrite<CR>")

return {
    {
        "mhartington/formatter.nvim",
        cmd = function()
            -- Utilities for creating configurations
            local util = require("formatter.util")

            -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
            require("formatter").setup({
                -- Enable or disable logging
                logging = true,
                -- Set the log level
                log_level = vim.log.levels.WARN,
                -- All formatter configurations are opt-in
                filetype = {
                    -- Formatter configurations for filetype "lua" go here
                    -- and will be executed in order
                    lua = {
                        -- "formatter.filetypes.lua" defines default configurations for the
                        -- "lua" filetype
                        require("formatter.filetypes.lua").stylua,
                    },
                    rust = {
                        function()
                            return {
                                exe = "rustfmt",
                                stdin = true,
                            }
                        end,
                    },
                    css = {
                        require("formatter.filetypes.css").prettier,
                    },
                    cs = {
                        function()
                            return {
                                exe = "csharpier",
                                args = {
                                    "format",
                                },
                                stdin = true,
                            }
                        end,
                    },
                    markdown = {
                        require("formatter.filetypes.markdown").denofmt,
                    },
                    json = {
                        require("formatter.filetypes.json").prettier,
                    },
                    typescript = {
                        require("formatter.filetypes.typescript").prettier,
                    },
                    typescriptreact = {
                        require("formatter.filetypes.typescriptreact").prettier,
                    },

                    -- Use the special "*" filetype for defining formatter configurations on
                    -- any filetype
                    ["*"] = {
                        -- "formatter.filetypes.any" defines default configurations for any
                        -- filetype
                        require("formatter.filetypes.any").remove_trailing_whitespace,
                    },
                },
            })
        end,
    },
}
