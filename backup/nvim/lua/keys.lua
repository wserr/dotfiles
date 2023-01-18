-- 1. Telescope
local builtin = require("telescope.builtin")

-- Opens window to search for files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- Opens window to search for keywords in files
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- Opens window to search in currently open buffers
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

-- Opens window to search help tags
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- 2. Nvim tree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tff", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>")

-- 3. Formatter

vim.keymap.set("n", "<leader>F", ":Format<CR>")
vim.keymap.set("n", "<leader>Fw", ":FormatWrite<CR>")

-- 4. Trouble

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- 5. Terminal mode (TODO, doesn't work yet)
vim.keymap.set("t", "<Esc>", "<C-<Bslash>><C-n>", { silent = true })

-- 6. Spawn terminals
vim.keymap.set("n", "ts", ":split | te<CR>")
vim.keymap.set("n", "tvs", ":vsplit | te<CR>")
vim.keymap.set("n", "tt", ":tabedit | te<CR>")


-- 7. Resize current split
vim.keymap.set("n", "<leader>wi", ":vertical res +10<CR>")
vim.keymap.set("n", "<leader>wd", ":vertical res -10<CR>")
vim.keymap.set("n", "<leader>hi", ":res +10<CR>")
vim.keymap.set("n", "<leader>hd", ":res -10<CR>")

-- 8. Run tests
vim.keymap.set("n", "<leader>af", "<cmd>TestFile<cr>")
vim.keymap.set("n", "<leader>an", "<cmd>TestNearest<cr>")
vim.keymap.set("n", "<leader>al", "<cmd>TestLast<cr>")

-- 9. MarkdownPreview
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>")

-- 10. Git
vim.keymap.set("n", "tsg", ":split | te gitui<CR>")
vim.keymap.set("n", "tvsg", ":vsplit | te gitui<CR>")
vim.keymap.set("n", "ttg", ":tabedit | te gitui<CR>")

-- 0. Other
-- Add whole shebang
vim.keymap.set("i", "<leader>s", "#!/usr/bin/env bash")

-- Add line to run docker indefinetely
vim.keymap.set("i", "<leader>i", "ENTRYPOINT [\"/bin/sh\", \"-c\", \"tail -f /dev/null\"]")

