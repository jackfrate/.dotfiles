local fn = vim.fn

-- vim.api.nvim_command([[
-- augroup LineNumberManagementVscode
--   autocmd InsertEnter * call VSCodeNotify('settings.cycle.lineNumbersOn')
--   autocmd InsertLeave * call VSCodeNotify('settings.cycle.lineNumbersRelative')
-- augroup END 
-- ]])


local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {}

return packer.startup(function(use)
  -- My plugins here
  use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
  
  use({'machakann/vim-sandwich'})

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)