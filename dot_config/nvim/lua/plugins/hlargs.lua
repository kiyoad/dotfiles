return {
  {
    -- Highlight arguments' definitions and usages, asynchronously, using Treesitter.
    "m-demare/hlargs.nvim",
    event = "VeryLazy",
    config = function()
      require("hlargs").setup({})
    end,
  },
}
