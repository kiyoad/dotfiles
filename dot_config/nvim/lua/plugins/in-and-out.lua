return {
  {
    "ysmb-wtsg/in-and-out.nvim",
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
