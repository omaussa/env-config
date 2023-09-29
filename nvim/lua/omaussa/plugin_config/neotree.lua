vim.keymap.set("n", "<leader>tt", ":NeoTreeShowToggle<CR>")

require 'nvim-tmux-navigation'.setup {
  enable_git_status = true,
  enable_diagnostics = true,
  close_if_last_window = true,
  disable_when_zoomed = true, -- defaults to false
  keybindings = {
    left = "<C-h>",
    down = "<C-j>",
    up = "<C-k>",
    right = "<C-l>",
    last_active = "<C-\\>",
    next = "<C->>",
  },
  filesystem = {
    filtered_items = {
      visible = true,
      -- show_hidden_count = true,
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_by_name = {
        '.git',
        '.DS_Store',
        'thumbs.db',
      },
      never_show = {},
    },
    follow_current_file = true,
  }
}
