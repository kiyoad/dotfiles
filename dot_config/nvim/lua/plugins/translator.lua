return {
  {
    -- Asynchronous translating plugin for Vim/Neovim
    "voldikss/vim-translator",
    event = "VeryLazy",
    cmd = { "TranslateW", "TranslateW --target_lang=en" },
    keys = {
      -- Popup
      { "<leader>t", "", desc = "Translate" },
      { "<leader>tj", "<cmd>TranslateW<CR>", mode = "n", desc = "Translate words into Japanese" },
      { "<leader>tj", ":'<,'>TranslateW<CR>", mode = "v", desc = "Translate lines into Japanese" },
      { "<leader>te", "<cmd>TranslateW --target_lang=en<CR>", mode = "n", desc = "Translate words into English" },
      { "<leader>te", ":'<,'>TranslateW --target_lang=en<CR>", mode = "v", desc = "Translate lines into English" },
      -- Replace
      { "<leader>tr", "", desc = "Translate Replace" },
      -- Replace to Japanese
      { "<leader>trj", ":'<,'>TranslateR<CR>", mode = "v", desc = "Replace to Japanese" },
      {
        "<leader>trj",
        function()
          vim.api.nvim_feedkeys("^vg_", "n", false)
          -- Execute the conversion command after a short delay.
          vim.defer_fn(function()
            vim.api.nvim_feedkeys(":TranslateR\n", "n", false)
          end, 100) -- 100ms delay
        end,
        mode = "n",
        desc = "Replace to Japanese",
      },
      -- Replace to English
      { "<leader>tre", ":'<,'>TranslateR --target_lang=en<CR>", mode = "v", desc = "Replace to English" },
      {
        "<leader>tre",
        function()
          vim.api.nvim_feedkeys("^vg_", "n", false)
          -- Run translator command after a short delay
          vim.defer_fn(function()
            vim.api.nvim_feedkeys(":TranslateR --target_lang=en\n", "n", false)
          end, 100) -- 100ms delay
        end,
        mode = "n",
        desc = "Replace to English",
      },
    },
    config = function()
      vim.g.translator_target_lang = "ja"
      vim.g.translator_default_engines = { "google" }
      vim.g.translator_history_enable = true
      vim.g.translator_window_type = "popup"
      vim.g.translator_window_max_width = 0.5
      vim.g.translator_window_max_height = 0.9 -- 1 is not working
    end,
  },
  {
    -- With pantran.nvim, you can use your favorite machine translation engines without having to leave your favorite editor.
    "potamides/pantran.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>tw", "<cmd>Pantran<CR>", mode = { "n", "v" }, desc = "Show Translate Window" },
    },
    config = function()
      require("pantran").setup({
        default_engine = "google",
        engines = {
          google = {
            fallback = {
              default_source = "en",
              default_target = "ja",
            },
            -- NOTE: must set `DEEPL_AUTH_KEY` env-var
            -- deepl = {
            --   default_source = "",
            --   default_target = "",
            -- },
          },
        },
        ui = {
          width_percentage = 0.8,
          height_percentage = 0.8,
        },
        window = {
          title_border = { "⭐️ ", " ⭐️    " }, -- for google
          window_config = { border = "rounded" },
        },
        controls = {
          mappings = { -- Help Popup order cannot be changed
            edit = {
              -- normal mode mappings
              n = {
                -- ["j"] = "gj",
                -- ["k"] = "gk",
                ["S"] = require("pantran.ui.actions").switch_languages,
                ["e"] = require("pantran.ui.actions").select_engine,
                ["s"] = require("pantran.ui.actions").select_source,
                ["t"] = require("pantran.ui.actions").select_target,
                ["<C-y>"] = require("pantran.ui.actions").yank_close_translation,
                ["g?"] = require("pantran.ui.actions").help,
                --disable default mappings
                ["<C-Q>"] = false,
                ["gA"] = false,
                ["gS"] = false,
                ["gR"] = false,
                ["ga"] = false,
                ["ge"] = false,
                ["gr"] = false,
                ["gs"] = false,
                ["gt"] = false,
                ["gY"] = false,
                ["gy"] = false,
              },
              -- insert mode mappings
              i = {
                ["<C-y>"] = require("pantran.ui.actions").yank_close_translation,
                ["<C-t>"] = require("pantran.ui.actions").select_target,
                ["<C-s>"] = require("pantran.ui.actions").select_source,
                ["<C-e>"] = require("pantran.ui.actions").select_engine,
                ["<C-S>"] = require("pantran.ui.actions").switch_languages,
              },
            },
            -- Keybindings here are used in the selection window.
            select = {},
          },
        },
      })
    end,
  },
}
