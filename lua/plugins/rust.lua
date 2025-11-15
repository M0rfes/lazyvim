require("lspconfig").rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy",
      },
      checkOnSave = true, -- Run Clippy on every save
    },
  },
})
