return {
  { "nvim-neotest/neotest-jest" },
  { "nvim-neotest/neotest-go" },
  { "olimorris/neotest-rspec" },
  { "mrcjkb/rustaceanvim" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-jest",
        "neotest-go",
        "neotest-rspec",
        "rustaceanvim",
      },
    },
  },
}
