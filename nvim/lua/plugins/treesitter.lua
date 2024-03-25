return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
    "nvim-treesitter/nvim-treesitter-refactor",
    "HiPhish/nvim-ts-rainbow2",
  },
  opts = function(_, opts)
    opts.endwise = { enable = true }
    opts.indent = { enable = true, disable = { "yaml" } }
    opts.autotag = { enable = true }
    opts.rainbow = { enable = true, query = "rainbow-parens", strategy = require("ts-rainbow").strategy.global }
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
