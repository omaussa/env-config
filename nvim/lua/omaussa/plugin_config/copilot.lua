vim.g.copilot_filetypes = { xml = false, markdown = false }

vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]

vim.g.copilot_no_tab_map = true
vim.keymap.set("i", "<C-a>", ":copilot#Accept('\\<CR>')<CR>", { silent = true })
