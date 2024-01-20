return {
  "m4xshen/autoclose.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("autoclose").setup()
  end
}
