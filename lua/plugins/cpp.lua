-- in your LazyVim or Neovim config (init.lua or relevant file)
require("lspconfig").clangd.setup({
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "cxx", "cc" },
  root_dir = function()
    vim.fn.getcwd()
  end,
  settings = {
    ["clangd"] = {
      ["compilationDatabasePath"] = "build",
      ["fallbackFlags"] = { "-std=c++20" },
    },
  },
})
