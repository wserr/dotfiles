-- Spawn terminals
vim.keymap.set("n", "ts", ":split | te<CR>")
vim.keymap.set("n", "tvs", ":vsplit | te<CR>")
vim.keymap.set("n", "tdv", ":tabedit | te docker compose down -v<CR>")
vim.keymap.set("n", "tt", ":tabedit | te<CR>")

-- Go To ReadOnly mode in terminal
vim.keymap.set("t", "<C-[>", "<C-\\><C-N>")
