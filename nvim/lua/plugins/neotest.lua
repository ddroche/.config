return {
  { "olimorris/neotest-rspec" },
  { "mrcjkb/rustaceanvim" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-neotest/neotest-jest",
      "nvim-neotest/neotest-go",
      "mrcjkb/rustaceanvim",
      "olimorris/neotest-rspec",
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
