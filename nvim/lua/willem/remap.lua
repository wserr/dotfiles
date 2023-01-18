vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>Pa", vim.cmd.PackerSync)

-- Move selection up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search matches in the middle of the screens
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Does not overwrite paste buffer after delete
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Spawn terminals
vim.keymap.set("n", "ts", ":split | te<CR>")
vim.keymap.set("n", "tvs", ":vsplit | te<CR>")
vim.keymap.set("n", "tt", ":tabedit | te<CR>")

-- Resize current split
vim.keymap.set("n", "<leader>wi", ":vertical res +10<CR>")
vim.keymap.set("n", "<leader>wd", ":vertical res -10<CR>")
vim.keymap.set("n", "<leader>hi", ":res +10<CR>")
vim.keymap.set("n", "<leader>hd", ":res -10<CR>")
