return {
  "tpope/vim-fugitive",
  lazy = false,
  keys = {
    { "<leader>gs", vim.cmd.Git, desc = "git status" },
    { "<leader>gp", function() vim.cmd.Git('push') end, desc = "git push" },
  }
}
