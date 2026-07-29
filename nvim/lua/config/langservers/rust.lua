
vim.lsp.config["rust_analyzer"] = {
  settings = {
    ['rust-analyzer'] = {
      check = {
        command = "clippy";
      }
    }
  }
}
