return {
  {
    -- skkeleton is a Vim/Neovim plugin that provides japanese input environment called SKK.
    "vim-skk/skkeleton",
    dependencies = { "vim-denops/denops.vim" },
    config = function()
      vim.fn["skkeleton#config"]({
        globalDictionaries = {
          "~/.config/eskk/SKK-JISYO.L",
        },
        completionRankFile = "~/.config/eskk/completionRank",
        databasePath = "~/.config/eskk/database",
        userDictionary = "~/.config/eskk/userDictionary",
        eggLikeNewline = true,
        keepState = true,
        showCandidatesCount = 4,
        registerConvertResult = true,
      })
    end,
  },
  {
    -- Yet another indicator for Skkeleton.
    "delphinus/skkeleton_indicator.nvim",
    opts = {},
  },
}
