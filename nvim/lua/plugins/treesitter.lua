return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
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
