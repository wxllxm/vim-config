return {
  "coffebar/neovim-project",
  opts = {
    projects = { 
      "~/projects/*",
      "~/.config/*",
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals")
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  vim.keymap.set("n", "<Leader>fp", ":Telescope neovim-project discover<CR>")
}
