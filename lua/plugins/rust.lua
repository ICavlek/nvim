return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            procMacro = {
              enable = true,
              attributes = {
                enable = true,
              },
              ignored = {
                ["async-recursion"] = { "async_recursion" },
                ["napi-derive"] = { "napi" },
              },
            },
          },
        },
      },
    },
  },
  init = function()
    -- Register the LSP config for nvim 0.11+
    vim.lsp.config("rust-analyzer", {
      cmd = { "rust-analyzer" },
      filetypes = { "rust" },
      root_markers = { "Cargo.toml" },
    })
  end,
}
