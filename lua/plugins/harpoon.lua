return {
  'ThePrimeagen/harpoon',
  config = function()
    require("telescope").load_extension('harpoon')
    vim.keymap.set("n", "<Leader>fh", ":Telescope harpoon marks<CR>", {})
    vim.keymap.set("n", "<Leader>ha", ":lua require('harpoon.mark').add_file()<CR>", {})
    vim.keymap.set("n", "<Leader>hn", ":lua require('harpoon.ui').nav_next()<CR>", {})
    vim.keymap.set("n", "<Leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>", {})
  end
}
