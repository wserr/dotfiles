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
