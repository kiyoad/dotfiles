return {
  {
    -- Similar to indent-blankline, this plugin can highlight the indent line, and highlight the code chunk according to the current cursor position.
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = false,
        },
        indent = {
          enable = false,
        },
        line_num = {
          enable = true,
        },
        blank = {
          enable = true,
          chars = {
            " ",
          },
          style = {
            { bg = "#434437" },
            { bg = "#2f4440" },
            { bg = "#433054" },
            { bg = "#284251" },
          },
        },
      })
    end,
  },
}
