-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Multi cursor
-- keymap('n', '<C-d>', '<Nop>')
-- keymap('n', '<C-d>', 'mciw*<Cmd>nohl<CR>', { remap = true })


-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
-- keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)
-- keymap("i", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
-- keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
-- keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ff", "<cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>", opts)
-- keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>ft", "<cmd>call VSCodeNotify('workbench.view.search')<CR>", opts)
-- keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
-- keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
-- command pallette
keymap("n", "<leader>fp", "<cmd>call VSCodeNotify('workbench.action.showCommands')<CR>", opts)

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>call VSCodeNotify('editor.action.commentLine')<CR>", opts)
keymap("x", "<leader>/", "<cmd>call VSCodeNotify('editor.action.commentLine')<CR>", opts)
keymap("n", "<leader>\\", "<cmd>call VSCodeNotify('editor.action.blockComment')<CR>", opts)
keymap("x", "<leader>\\", "<cmd>call VSCodeNotify('editor.action.blockComment')<CR>", opts)
-- keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
-- keymap("n", "<leader>/", "<cmd>CommentToggle<CR>", opts)
-- keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
-- keymap("x", "<leader>/", "<esc><cmd>CommentToggle<CR>", opts)

-- DAP
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
-- keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- center screen when doing big movements
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- rename
vim.keymap.set("n", "<leader>er", "<cmd>call VSCodeNotify('editor.action.rename')<CR>")
vim.keymap.set("n", "<leader>d", "<cmd>call VSCodeNotify('editor.action.addSelectionToNextFindMatch')<CR>")
vim.keymap.set("n", "<leader>D", "<cmd>call VSCodeNotify('editor.action.addSelectionToPrevFindMatch')<CR>")

-- jump to next error / warning
vim.keymap.set("n", "<leader>ee", "<cmd>call VSCodeNotify('go-to-next-error.next.error')<CR>")
vim.keymap.set("n", "<leader>eE", "<cmd>call VSCodeNotify('go-to-next-error.prev.error')<CR>")
vim.keymap.set("n", "<leader>ew", "<cmd>call VSCodeNotify('go-to-next-error.next.warning')<CR>")
vim.keymap.set("n", "<leader>eW", "<cmd>call VSCodeNotify('go-to-next-error.prev.warning')<CR>")
-- same but in all files
vim.keymap.set("n", "<leader>Ee", "<cmd>call VSCodeNotify('go-to-next-error.nextInFiles.error')<CR>")
vim.keymap.set("n", "<leader>EE", "<cmd>call VSCodeNotify('go-to-next-error.prevInFiles.error')<CR>")
vim.keymap.set("n", "<leader>Ew", "<cmd>call VSCodeNotify('go-to-next-error.nextInFiles.warning')<CR>")
vim.keymap.set("n", "<leader>EW", "<cmd>call VSCodeNotify('go-to-next-error.prevInFiles.warning')<CR>")

-- TODO: put these in normal vim config, harpoon is amazing
-- harpoon
vim.keymap.set("n", "<leader>ae", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor')<CR>")
vim.keymap.set("n", "<leader>el", "<cmd>call VSCodeNotify('vscode-harpoon.editEditors')<CR>")
vim.keymap.set("n", "<leader>pe", "<cmd>call VSCodeNotify('vscode-harpoon.editorQuickPick')<CR>")

vim.keymap.set("n", "<leader>1", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor1')<CR>")
vim.keymap.set("n", "<leader>2", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor2')<CR>")
vim.keymap.set("n", "<leader>3", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor3')<CR>")
vim.keymap.set("n", "<leader>4", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor4')<CR>")
vim.keymap.set("n", "<leader>5", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor5')<CR>")
vim.keymap.set("n", "<leader>6", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor6')<CR>")
vim.keymap.set("n", "<leader>7", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor7')<CR>")
vim.keymap.set("n", "<leader>8", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor8')<CR>")
vim.keymap.set("n", "<leader>9", "<cmd>call VSCodeNotify('vscode-harpoon.gotoEditor9')<CR>")

vim.keymap.set("n", "<leader>a1", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor1')<CR>")
vim.keymap.set("n", "<leader>a2", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor2')<CR>")
vim.keymap.set("n", "<leader>a3", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor3')<CR>")
vim.keymap.set("n", "<leader>a4", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor4')<CR>")
vim.keymap.set("n", "<leader>a5", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor5')<CR>")
vim.keymap.set("n", "<leader>a6", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor6')<CR>")
vim.keymap.set("n", "<leader>a7", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor7')<CR>")
vim.keymap.set("n", "<leader>a8", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor8')<CR>")
vim.keymap.set("n", "<leader>a9", "<cmd>call VSCodeNotify('vscode-harpoon.addEditor9')<CR>")
