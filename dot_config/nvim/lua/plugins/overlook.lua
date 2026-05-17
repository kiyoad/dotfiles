return {
  {
    -- tackable popups for Neovim. Peek around the code without overlooking the bigger picture.
    "WilliamHsieh/overlook.nvim",
    enabled = true,
    opts = {},

    -- Optional: set up common keybindings
    keys = {
      { "<leader>o", "", desc = "Overlook" },
      {
        "<leader>od",
        function()
          require("overlook.api").peek_definition()
        end,
        desc = "Overlook: Peek definition",
      },
      {
        "<leader>oc",
        function()
          require("overlook.api").close_all()
        end,
        desc = "Overlook: Close all popup",
      },
      {
        "<leader>ou",
        function()
          require("overlook.api").restore_popup()
        end,
        desc = "Overlook: Restore popup",
      },
    },
  },
}
