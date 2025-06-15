return {
  {
    -- MCP Hub is a MCP client for neovim that seamlessly integrates MCP (Model Context Protocol) servers into your editing workflow.
    "ravitemer/mcphub.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
    config = function()
      require("mcphub").setup({
        extensions = {
          avante = {
            make_slash_commands = true, -- add slash command
          },
        },
      })
    end,
  },
}
