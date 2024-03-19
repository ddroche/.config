return {
  { "olimorris/neotest-rspec" },
  { "zidhuss/neotest-minitest" },
  { "mrcjkb/rustaceanvim" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-neotest/neotest-jest",
      "nvim-neotest/neotest-go",
      "mrcjkb/rustaceanvim",
      "olimorris/neotest-rspec",
      "zidhuss/neotest-minitest",
    },
    opts = {
      ["neotest-jest"] = {
        jestCommand = "yarn test --",
        jestConfigFile = "jest.config.ts",
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      ["neotest-rspec"] = {
        rspecCommand = "bundle exec rspec",
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      ["neotest-minitest"] = {
        test_cmd = function()
          return vim.tbl_flatten({
            "ruby",
            "-Itest",
          })
        end,
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      ["neotest-go"] = {
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      ["rustaceanvim.neotest"] = {
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
    },
  },
}
