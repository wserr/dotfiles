vim.g.mapleader = "\\"
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

-- Add whole shebang
vim.keymap.set("i", "<leader>sb", "#!/usr/bin/env bash")

-- Add line to run docker indefinetely
vim.keymap.set("i", "<leader>di", 'ENTRYPOINT ["/bin/sh", "-c", "tail -f /dev/null"]')

-- MarkdownPreview
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>")

-- Go To ReadOnly mode in terminal
vim.keymap.set("t","<C-[>" ,"<C-\\><C-N>")

-- Nvim tree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tff", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>")

-- Formatter
vim.keymap.set("n", "<leader>f", ":Format<CR>")
vim.keymap.set("n", "<leader>F", ":FormatWrite<CR>")
