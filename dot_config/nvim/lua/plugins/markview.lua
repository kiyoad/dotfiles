return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  config = function()
    require("markview").setup({
      preview = {
        enable = true,
        filetypes = { "markdown", "quarto", "rmd", "typst", "Avante" },
        ignore_buftypes = {},
      },
    })
  end,
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
