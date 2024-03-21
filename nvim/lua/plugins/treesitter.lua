return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "RRethy/nvim-treesitter-endwise" },
  opts = function(_, opts)
    opts.endwise = { enable = true }
    opts.indent = { enable = true, disable = { "yaml" } }
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "tsx",
      "typescript",
      "ruby",
      "go",
      "rust",
      "lua",
      "bash",
      "comment",
      "css",
      "html",
      "json",
      "kdl",
      "toml",
      "yaml",
    })
  end,
}
