-- with lazy.nvim
return {
  -- Persistent bookmarks: hard disk of your thoughts
  -- https://github.com/LintaoAmons/bookmarks.nvim
  "LintaoAmons/bookmarks.nvim",
  -- pin the plugin at specific version for stability
  -- backup your bookmark sqlite db when there are breaking changes (major version change)
  event = "VeryLazy",
  keys = {
    -- Popup
    { "<leader>B", "", desc = "Bookmarks" },
    { "<leader>BB", "<cmd>BookmarksMark<CR>", mode = "n", desc = "Mark current line into active BookmarkList." },
    {
      "<leader>Bd",
      "<cmd>BookmarksDesc<CR>",
      mode = "n",
      desc = "Add description to the bookmark under cursor, if no bookmark, then mark it first.",
    },
    { "<leader>Bg", "<cmd>BookmarksGoto<CR>", mode = "n", desc = "Go to bookmark at current active BookmarkList." },
    { "<leader>Bt", "<cmd>BookmarksTree<CR>", mode = "n", desc = "Browse bookmarks in tree view." },
    { "<leader>Bp", "<cmd>BookmarksGrep<CR>", mode = "n", desc = "Grep through the content of all bookmarked files." },
    { "<leader>Bc", "<cmd>BookmarksCommands<CR>", mode = "n", desc = "Find and trigger a bookmark command." },
    { "<leader>Bi", "<cmd>BookmarksInfoCurrentBookmark<CR>", mode = "n", desc = "Show current bookmark info." },
    { "<leader>BI", "<cmd>BookmarksInfo<CR>", mode = "n", desc = "Overview plugin current status." },
  },
  tag = "3.2.0",
  dependencies = {
    { "kkharji/sqlite.lua" },
    { "nvim-telescope/telescope.nvim" }, -- currently has only telescopes supported, but PRs for other pickers are welcome
    { "stevearc/dressing.nvim" }, -- optional: better UI
    { "GeorgesAlkhouri/nvim-aider" }, -- optional: for Aider integration
  },
  config = function()
    local opts = {} -- check the "./lua/bookmarks/default-config.lua" file for all the options
    require("bookmarks").setup(opts) -- you must call setup to init sqlite db
  end,
}

-- run :BookmarksInfo to see the running status of the plugin
