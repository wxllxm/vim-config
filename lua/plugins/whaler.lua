return {
  "SalOrak/whaler",
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      extensions = {
        whaler = {
          directories = { { path = "/Users/wxllxm", alias = "home" } },
          oneoff_directories = { "/Users/wxllxm/.config/nvim" },
          auto_file_explorer = true,
          auto_cwd = true,
          file_explorer = "neotree",
        }
      }
    })
    telescope.load_extension("whaler")

    vim.keymap.set("n", "<leader>fd", telescope.extensions.whaler.whaler)
  end
}
