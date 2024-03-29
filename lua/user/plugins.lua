-- Additional Plugins
lvim.plugins = {
  -- {
  --   "olivercederborg/poimandres.nvim",
  --   config = function()
  --     require("poimandres").setup {
  --       -- leave this setup function empty for default config
  --       -- or refer to the configuration section
  --       -- for configuration options
  --       bold_vert_split = false, -- use bold vertical separators
  --       dim_nc_background = false, -- dim 'non-current' window backgrounds
  --       disable_background = false, -- disable background
  --       disable_float_background = false, -- disable background for floats
  --       disable_italics = false, -- disable italics
  --     }
  --   end,
  -- },
  -- {
  --   "adalessa/laravel.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope.nvim",
  --   },
  --   cmd = { "Sail", "Artisan", "Composer" },
  --   keys = {
  --     { "<leader>pa", ":Artisan<cr>" },
  --   },
  --   config = function()
  --     require("laravel").setup()
  --     require("telescope").load_extension "laravel"
  --   end,
  -- },
  "gpanders/editorconfig.nvim",
  "iamcco/markdown-preview.nvim",
  "glepnir/zephyr-nvim",
  "Kenbayashi/yash.nvim",
  "ofirgall/ofirkai.nvim",
  { "kartikp10/noctis.nvim", requires = { "rktjmp/lush.nvim" } },
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "christianchiarulli/nvim-ts-rainbow",
  "mfussenegger/nvim-jdtls",
  -- "karb94/neoscroll.nvim",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  -- "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  -- "lunarvim/darkplus.nvim",
  -- "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  "hrsh7th/cmp-emoji",
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  {
    "saecki/crates.nvim",
    tag = "v0.3.0",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  -- {
  --   "jinh0/eyeliner.nvim",
  --   config = function()
  --     require("eyeliner").setup {
  --       highlight_on_key = true,
  --     }
  --   end,
  -- },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  -- {
  --   "0x100101/lab.nvim",
  --   run = "cd js && npm ci",
  -- },
  -- { "tzachar/cmp-tabnine", run = "./install.sh" },
  {
    "zbirenbaum/copilot.lua",
    -- event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup {
        formatters = {
          insert_text = require("copilot_cmp.format").remove_existing,
        },
      }
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-ui" },
  { "kristijanhusak/vim-dadbod-completion" },
  -- { "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } },
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup {
        -- optional configuration
      }
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  "yamatsum/nvim-cursorline",
  "epwalsh/obsidian.nvim"
  -- "hrsh7th/nvim-cmp",
  -- "MunifTanjim/nui.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
