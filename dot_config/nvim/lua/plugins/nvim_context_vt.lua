return {
  {
    -- Shows virtual text of the current context after functions, methods, statements, etc.
    "andersevenrud/nvim_context_vt",
    event = "VeryLazy",
    config = function()
      require("nvim_context_vt").setup({
        disable_virtual_lines = true,
      })
    end,
  },
}
