-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            {
                "Failed to clone lazy.nvim:\n",
                "ErrorMsg",
            },
            {
                out,
                "WarningMsg",
            },
            {
                "\nPress any key to exit...",
            },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

vim.filetype.add({
    extension = {
        mdx = "markdown",
	unit = "systemd",
	timer = "systemd"
    },
})
vim.filetype.add({
  filename = {
    ['docker-compose.yml'] = 'yaml.docker-compose',
  },
})
vim.opt.nu = true
vim.opt.relativenumber = true

-- Spawn terminals
vim.keymap.set("n", "ts", ":split | te<CR>")
vim.keymap.set("n", "tvs", ":vsplit | te<CR>")
vim.keymap.set("n", "tdv", ":tabedit | te docker compose down -v<CR>")
vim.keymap.set("n", "tt", ":tabedit | te<CR>")

-- Go To ReadOnly mode in terminal
vim.keymap.set("t", "<C-[>", "<C-\\><C-N>")

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import your plugins
        {
            import = "plugins",
        },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = {
        colorscheme = {
            "habamax",
        },
    },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
