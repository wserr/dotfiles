vim.api.nvim_create_autocmd({'BufEnter'}, { pattern = "term://*", command = "startinsert" })
