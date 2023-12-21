return {
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require('harpoon')
      harpoon:setup()
    end,
    keys = {
      {
        "<leader>a",
        function()
          require('harpoon.mark').add_file()
        end,
        "harpoon add"
      },
      {
        "]]",
        function()
          require('harpoon.ui').nav_next()
        end,
        "harpoon next"
      },
      {
        "[[",
        function()
          require('harpoon.ui').nav_prev()
        end,
        "harpoon prev"
      },
      {
        "<C-e>",
        function()
          require('harpoon.ui').toggle_quick_menu()
        end,
        "harpoon ui"
      },
    },
  }
}
