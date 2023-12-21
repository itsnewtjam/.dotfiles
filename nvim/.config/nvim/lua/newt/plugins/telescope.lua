return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {"<leader>pf", "<cmd>Telescope find_files<cr>", desc = "project files"},
    {"<leader>pg", "<cmd>Telescope git_files<cr>", desc = "project git files"},
    {
      "<leader>ps",
      function()
        require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "project search"
    },
  }
}
