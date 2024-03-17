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
    build = ":MasonUpdate",
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
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  },
  {
    'stevearc/dressing.nvim',
    lazy = false,
    opts = {},
  },
  {
    'anuvyklack/fold-preview.nvim',
    requires = 'anuvyklack/keymap-amend.nvim',
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
  },
  { "folke/neodev.nvim",         opts = {} },
  { 'echasnovski/mini.nvim',     version = false, init = function() require('configs.mini') end },
  { 'NvChad/nvim-colorizer.lua', opts = {} },
  {
    'tomasiser/vim-code-dark',
    lazy = false,
    priority = 1000,
    config = function() vim.cmd(":colorscheme codedark") end,
  },
  { 'dstein64/nvim-scrollview', opts = {} },
  {
    'lewis6991/gitsigns.nvim',
    opts = {},
  },
  { 'alec-gibson/nvim-tetris' },
  {
    'ggandor/leap.nvim',
    init = function() 
      require('leap').create_default_mappings() 
    end,
  },
  { 'anuvyklack/keymap-amend.nvim' },
  { "rcarriga/nvim-notify" },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = require 'configs.treesitter',
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
    opts = {
      use_default_keymaps = false,
    }
  },
  {
    "folke/twilight.nvim",
    opts = require('configs.twilight'),
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
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
  { 'm-demare/hlargs.nvim', opts = {} },
  {
    "roobert/search-replace.nvim",
    opts = {
      -- optionally override defaults
      default_replace_single_buffer_options = "gcI",
      default_replace_multi_buffer_options = "egcI",
    },
  },
  {
    'Bekaboo/deadcolumn.nvim',
    opts = require('configs.deadcolumn'),
  },
  {
    'yamatsum/nvim-cursorline',
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
  { 'rktjmp/lush.nvim'},
  { 'metalelf0/jellybeans-nvim' },
  {
   'hrsh7th/nvim-cmp',
   priority = 100,
    opts = require('configs.cmp.nvim'),
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    opts = require('configs.cmp.nvim-lsp'),
  },
  {
    'hrsh7th/cmp-buffer',
  },
  {
    'hrsh7th/cmp-path',
  },
  {
    'hrsh7th/cmp-cmdline',
  },
  {
    'saadparwaiz1/cmp_luasnip',
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
  {
  "folke/zen-mode.nvim",
  opts = require('configs.zen-mode'),
  },
  {
    "karb94/neoscroll.nvim",
    config = function ()
      require('configs.neoscroll')
    end
  },
}
return r
