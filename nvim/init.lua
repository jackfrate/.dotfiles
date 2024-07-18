if vim.g.vscode then
  -- lightweight vscode setup
  require("config.yeet.keymaps")
  require("config.yeet.autocommands")
  require("config.yeet.plugins")
  require("config.yeet.options")
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
  require("config.default.keymaps")
  require("config.default.autocmds")
  require("config.default.options")
end
