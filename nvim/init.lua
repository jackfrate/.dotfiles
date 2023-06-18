if vim.g.vscode then
  -- lightweight vscode setup
  require("config.vscode.keymaps")
  require("config.vscode.autocommands")
  -- require("config.vscode.plugins")
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
  require("config.keymaps")
  require("config.autocmds")
  require("config.options")
end
