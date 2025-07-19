return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  -- For `nvim-treesitter` users.
  priority = 49,
  dependencies = {
    "saghen/blink.cmp",
  },
  keys = {
    {
      "<leader>cP",
      ft = "markdown",
      "<cmd>Markview splitToggle<cr>",
      desc = "Markview.nvim",
    },
  },
}
