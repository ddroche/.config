return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    table.insert(opts.codelens, { enabled = true })
  end,
}
