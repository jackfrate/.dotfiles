
if vim.g.vscode then
    -- VSCode extension
    require "user.vscode.keymaps"
    require "user.vscode.plugins"
    require "user.vscode.autocommands"
else
    -- ordinary Neovim
    require "user.impatient"
    require "user.options"
    require "user.keymaps"
    require "user.plugins"
    require "user.autocommands"
    require "user.colorscheme"
    require "user.cmp"
    require "user.telescope"
    require "user.gitsigns"
    require "user.treesitter"
    require "user.autopairs"
    require "user.comment"
    -- require "user.nvim-tree"
    require "user.bufferline"
    require "user.lualine"
    require "user.toggleterm"
    require "user.project"
    require "user.illuminate"
    require "user.indentline"
    require "user.alpha"
    require "user.lsp"
    require "user.dap"
    require "user.coc"
    require "user.neotree"
end
