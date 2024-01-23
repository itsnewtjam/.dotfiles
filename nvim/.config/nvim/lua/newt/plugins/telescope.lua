return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').load_extension('git_worktree')
  end,
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
    {
      "<leader>gw",
      function()
        require('telescope').extensions.git_worktree.git_worktrees()
      end,
      "git worktree"
    },
    {
      "<leader>gwa",
      function()
        require('telescope').extensions.git_worktree.create_git_worktree()
      end,
      "git worktree add"
    },
  }
}
