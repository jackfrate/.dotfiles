vim.api.nvim_command([[
augroup LineNumberManagementVscode
  autocmd InsertEnter * call VSCodeNotify('settings.cycle.lineNumbersOn')
  autocmd InsertLeave * call VSCodeNotify('settings.cycle.lineNumbersRelative')
augroup END
" augroup CopilotToggleVscode
"   autocmd InsertEnter * call VSCodeNotify('settings.cycle.copilotOn')
"   autocmd InsertLeave * call VSCodeNotify('settings.cycle.copilotOff')
" augroup END
]])
