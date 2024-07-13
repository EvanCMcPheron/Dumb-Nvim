local r = {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    priority = 999,
    init = function()
      require("lualine").setup(require("configs.lualine"))
    end
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup(require("configs.dashboard"))
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    'nvim-lua/plenary.nvim',
    lazy = false,
    priority = 900,
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    config = function() require('telescope').setup(require('configs.telescope')) end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = {
      '<leader>fh',
      '<leader>hm',
      '<leader>hh',
      '<leader>nn',
      '<leader>nh',
      '<leader>nt',
      '<leader>ns'
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require('harpoon').setup(require('configs.harpoon')) end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  { -- noice is a cool idea, but it breaks typing so no can do lmao
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = require('configs.noice'),
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = {
      "NvimTreeToggle",
      "NvimTreeFindFileToggle",
    },
    config = function()
      require('nvim-tree').setup(require('configs.nvim-tree'))
    end,
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function() require('mason').setup() end,
    build = ":MasonUpdate",
  },
  {
    'jghauser/mkdir.nvim',
    lazy = false,
  },
  {
    'gaborvecsei/usage-tracker.nvim',
    lazy = false,
    config = function()
      require('usage-tracker').setup({
        keep_eventlog_days = 14,
        cleanup_freq_days = 7,
        event_wait_period_in_sec = 5,
        inactivity_threshold_in_min = 5,
        inactivity_check_freq_in_sec = 5,
        verbose = 0,
        telemetry_endpoint = "" -- you'll need to start the restapi for this feature
      })
    end,
  },
  {
    'sudormrfbin/cheatsheet.nvim',

    cmd = "Cheatsheet",

    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  },
  {
    'stevearc/dressing.nvim',
    event = "VeryLazy",
    opts = {},
  },
  {
    'anuvyklack/fold-preview.nvim',
    requires = 'anuvyklack/keymap-amend.nvim',
    lazy = false,
    config = function()
      require('fold-preview').setup(require('configs.fold-preview'))
    end
  },
  {
    "willothy/flatten.nvim",
    config = true,
    -- or pass configuration with
    -- opts = {  }
    -- Ensure that it runs first to minimize delay when opening file from terminal
    lazy = false,
    priority = 1001,
  },
  {
    'neovim/nvim-lspconfig',
    lazy = false,
  },
  {
    "folke/neodev.nvim",
    lazy = false,
    opts = {
      library = { plugins = { "nvim-dap-ui" } },
    }
  },
  { 'echasnovski/mini.nvim',     lazy = false, version = false, init = function() require('configs.mini') end },
  { 'NvChad/nvim-colorizer.lua', lazy = false, opts = {} },
  {
    'tomasiser/vim-code-dark',
    lazy = false,
    priority = 1000,
    config = function() vim.cmd(":colorscheme codedark") end,
  },
  { 'dstein64/nvim-scrollview', opts = {},     lazy = false },
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    opts = {},
  },
  { 'alec-gibson/nvim-tetris',  cmd = "Tetris" },
  {
    'ggandor/leap.nvim',
    lazy = false,
    init = function()
      require('leap').create_default_mappings()
    end,
  },
  { 'anuvyklack/keymap-amend.nvim', lazy = false },
  { "rcarriga/nvim-notify",         lazy = false },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = require 'configs.treesitter',
    lazy = false,
    dependencies = {
      -- NOTE: additional parser
      { "nushell/tree-sitter-nu" },
    },
    build = ":TSUpdate",
  },
  -- { "lukas-reineke/indent-blankline.nvim", config = function() require('indent_blankline.init').setup({
  --
  -- }) end },
  -- {    requires 0.10.0, which is broken for me
  --   'Bekaboo/dropbar.nvim',
  --   -- optional, but required for fuzzy finder support
  --   dependencies = {
  --     'nvim-telescope/telescope-fzf-native.nvim'
  --   }
  -- },
  -- {
  --   'LhKipp/nvim-nu',
  --   opts = {},
  -- }
  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },

    cmd = "TSJToggle",

    opts = {
      use_default_keymaps = false,
    }
  },
  {
    "folke/twilight.nvim",
    keys = {
      '<leader>cz',
      '<leader>ct',
    },
    opts = require('configs.twilight'),
  },
  {
    "kawre/leetcode.nvim",

    build = ":TSUpdate html",
    cmd = "Leet",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",
      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = require('configs.leetcode'),
  },
  { 'm-demare/hlargs.nvim', lazy = false, opts = {} },
  {
    'Bekaboo/deadcolumn.nvim',
    lazy = false,
    opts = require('configs.deadcolumn'),
  },
  {
    'yamatsum/nvim-cursorline',
    lazy = false,
    opts = {
      cursorline = {
        enable = true,
        timeout = 1000,
        number = false,
      },
      cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
      }
    }
  },
  {
    'hrsh7th/nvim-cmp',
    lazy = false,
    priority = 100,
    opts = require('configs.cmp.nvim'),
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    lazy = false,
    opts = require('configs.cmp.nvim-lsp'),
  },
  {
    'hrsh7th/cmp-buffer',
    lazy = false,
  },
  {
    'hrsh7th/cmp-path',
    lazy = false,
  },
  {
    'hrsh7th/cmp-cmdline',
    lazy = false,
  },
  {
    'saadparwaiz1/cmp_luasnip',
    lazy = false,
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = "<leader>cp",
    opts = require('configs.zen-mode'),
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require('configs.neoscroll')
    end
  },
  -- {
  --   "Shatur/neovim-session-manager",
  --   config = function()
  --     require('neovim-session-manager').setup {
  --       autoload_mode = require('neovim_session_manager.config').AutoloadMode.CurrentDir,
  --     }
  --   end
  -- },
  {
    "natecraddock/sessions.nvim",
    lazy = false,
    opts = {


      lazy = false,
      events = { "WinEnter", "VimLeavePre" },
      session_filepath = vim.fn.stdpath("data") .. "/sessions",
      absolute = true,
    }
  },
  {
    'mrjones2014/smart-splits.nvim',
    opts = {},

    keys = {
      '<A-h>',
      '<A-j>',
      '<A-k>',
      '<A-l>',

      '<C-A-h>',
      '<C-A-j>',
      '<C-A-k>',
      '<C-A-l>',

      '<leader><leader>h',
      '<leader><leader>j',
      '<leader><leader>k',
      '<leader><leader>l',
    },
  },
  {
    'rebelot/terminal.nvim',
    keys = {
      '<leader>ts',
      '<leader>to',
      '<leader>tO',
      '<leader>tr',
      '<leader>tR',
      '<leader>tk',
      '<leader>t]',
      '<leader>t[',
      '<leader>tl',
      '<leader>tL',
      '<leader>th',
      '<leader>tH',
      '<leader>tf',
      '<leader>tg',
    },
    config = function()
      require('configs.terminal')
    end,
  },
  {
    "Bryley/neoai.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    cmd = {
      "NeoAI",
      "NeoAIOpen",
      "NeoAIClose",
      "NeoAIToggle",
      "NeoAIContext",
      "NeoAIContextOpen",
      "NeoAIContextClose",
      "NeoAIInject",
      "NeoAIInjectCode",
      "NeoAIInjectContext",
      "NeoAIInjectContextCode",
    },
    keys = {
      { "<leader>as", desc = "summarize text" },
    },
    config = function()
      vim.env['OPENAI_API_KEY'] = require('openai_key')
      require('neoai').setup {
      }
    end,
  },
  {
    'mbbill/undotree',
    cmd = "UndotreeToggle",
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    opts = {},
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },
  {
    "mfussenegger/nvim-dap",
    lazy = false,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    lazy = false,
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "cpptools",
        "codelldb",
      }
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      keywords = {
        FIX = {
          icon = " ", -- icon used for the sign, and in search results
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" }
      },

    },
    cmd = {
      "TodoTrouble",
      "TodoTelescope",
    },
  },
  {
    "LintaoAmons/scratch.nvim",
    event = "VeryLazy",
  },
  {
    'habamax/vim-godot',
    event = 'VimEnter',
  },
}
return r
