return {
  -- { "rcarriga/cmp-dap" },
  -- { "saadparwaiz1/cmp_luasnip" },
  -- { "hrsh7th/cmp-buffer" },
  -- { "hrsh7th/cmp-nvim-lsp" },
  -- { "hrsh7th/cmp-path" },
  -- { "hrsh7th/cmp-cmdline" },
  -- { "Saecki/crates.nvim" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "zbirenbaum/cmp-copilot",
      "rcarriga/cmp-dap",
      -- "saadparwaiz1/cmp_luasnip",
      -- "hrsh7th/cmp-buffer",
      -- "hrsh7th/cmp-nvim-lsp",
      -- "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      -- "Saecki/crates.nvim",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.config.disable,
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<C-y>"] = cmp.mapping.confirm(),
      })
    end,
  },
}
