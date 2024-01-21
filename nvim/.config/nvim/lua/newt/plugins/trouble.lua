return {
  "folke/trouble.nvim",
  opts = {
  },
  keys = {
    { "<leader>t", function() require("trouble").toggle("workspace_diagnostics") end, desc = "toggle trouble" },
  }
}
