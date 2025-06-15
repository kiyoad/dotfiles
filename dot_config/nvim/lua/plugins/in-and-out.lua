return {
  {
    -- in-and-out is a Neovim plugin designed to quickly navigate in and out of surrounding characters like quotes (", '), parentheses ((, )), curly braces ({, }), square brackets ([, ]), and backticks (`).
    "ysmb-wtsg/in-and-out.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<C-l>",
        function()
          require("in-and-out").in_and_out()
        end,
        mode = "i",
      },
    },
  },
}
