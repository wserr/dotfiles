-- 1. Telescope file browser
vim.keymap.set("n", "<leader>t", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>tc", ":Telescope file_browser path=%:p:h<CR>")

-- Spawn terminals
vim.keymap.set("n", "ts", ":split | te<CR>")
vim.keymap.set("n", "tvs", ":vsplit | te<CR>")
vim.keymap.set("n", "tdv", ":tabedit | te docker compose down -v<CR>")
vim.keymap.set("n", "tt", ":tabedit | te<CR>")

-- Go To ReadOnly mode in terminal
vim.keymap.set("t", "<C-[>", "<C-\\><C-N>")

-- 2. Trouble
vim.keymap.set("n", "<leader>T", ":Trouble diagnostics<CR>")

-- 3. Telescope
local builtin = require("telescope.builtin")

-- Opens window to search for files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- Opens window to search for keywords in files
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- Open window to search for current word (sequence) under cursor
vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})

-- Open window to fuzzy find in current open buffer
vim.keymap.set("n", "<leader>fb", builtin.current_buffer_fuzzy_find, {})

-- Open window with git commits
vim.keymap.set("n", "<leader>fgc", builtin.git_commits, {})

-- Open window with git commits on current buffer
vim.keymap.set("n", "<leader>fgbc", builtin.git_bcommits, {})

-- Open window with git branches on current buffer
vim.keymap.set("n", "<leader>fgb", builtin.git_branches, {})

-- Open window with git status on current buffer
vim.keymap.set("n", "<leader>fgs", builtin.git_status, {})

-- Open window with restored status of previous picker
vim.keymap.set("n", "<leader>fr", builtin.resume, {})

-- Open window with contents of registers
vim.keymap.set("n", "<leader>frg", builtin.registers, {})

-- Opens window to search in currently open buffers
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

-- Opens window to search help tags
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>gg", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- 4. Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")

-- 5. Resize
-- Resize current split
vim.keymap.set("n", "<leader>wi", ":vertical res +10<CR>")
vim.keymap.set("n", "<leader>wd", ":vertical res -10<CR>")
vim.keymap.set("n", "<leader>hi", ":res +10<CR>")
vim.keymap.set("n", "<leader>hd", ":res -10<CR>")


-- 6. Temp file
vim.keymap.set("n", "temp", ":lua OpenTempFile()<CR>")

-- 7. Attach client to buffer
vim.keymap.set("n", "att", ":lua AttachClient()<CR>")
