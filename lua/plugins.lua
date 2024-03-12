local r = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup(require("configs.tokyonight"))
    end,
  },
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
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    'nvim-lua/plenary.nvim',
    lazy = false,
    priority = 900,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require('telescope').setup(require('configs.telescope')) end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
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
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
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
    "nvim-tree/nvim-web-devicons"
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function() 
      require('nvim-tree').setup(require('configs.nvim-tree'))
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function() require('mason').setup() end,
  },
  {
    'jghauser/mkdir.nvim',
  },
  {
    'gaborvecsei/usage-tracker.nvim',
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

    requires = {
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  },
  {
    'stevearc/dressing.nvim',
    lazy = false,
    opts = {},
  },
  { 'anuvyklack/fold-preview.nvim',
     requires = 'anuvyklack/keymap-amend.nvim',
     config = function()
        require('fold-preview').setup(require('configs.fold-preview'))
     end
  }
}
return r







