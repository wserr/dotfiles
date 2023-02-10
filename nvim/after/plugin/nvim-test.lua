require("nvim-test").setup{}

vim.keymap.set("n", "<leader>ten", ":TestNearest<CR>")
vim.keymap.set("n", "<leader>tel", ":TestLast<CR>")
vim.keymap.set("n", "<leader>tef", ":TestFile<CR>")
