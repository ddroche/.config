-- set node version to work with copilot
vim.g.node_host_prog = "~/.nvm/versions/node/v20.11.1/lib/node_modules"
vim.g.copilot_node_command = "~/.nvm/versions/node/v20/10.0/bin/node"
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
