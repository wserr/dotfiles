vim.lsp.config("jdtls", {
  settings = {
    java = {
        -- Custom eclipse.jdt.ls options go here
    },
  },
})

vim.lsp.enable("jdtls")
