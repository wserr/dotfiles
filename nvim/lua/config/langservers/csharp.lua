local util = require('lspconfig.util')

vim.lsp.config("csharp_ls", {
  cmd = { 'csharp-ls' },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    on_dir(util.root_pattern('*.sln', '*.slnx', '*.csproj')(fname))
  end,
  filetypes = { 'cs' },
  init_options = {
    AutomaticWorkspaceInit = true,
  },
  get_language_id = function(_, ft)
    if ft == 'cs' then
      return 'csharp'
    end
    return ft
  end,
})

vim.lsp.enable("csharp_ls")
