-- require('mini.completion').setup()

require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.indentscope').setup()
require('mini.comment').setup()
require('mini.notify').setup()
require('mini.surround').setup {
  -- Add custom surroundings to be used on top of builtin ones. For more
  -- information with examples, see `:h MiniSurround.config`.
  custom_surroundings = nil,

  -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
  highlight_duration = 500,

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = 'tsa', -- Add surrounding in Normal and Visual modes
    delete = 'tsd', -- Delete surrounding
    find = 'tsf', -- Find surrounding (to the right)
    find_left = 'tsF', -- Find surrounding (to the left)
    highlight = 'tsh', -- Highlight surrounding
    replace = 'tsr', -- Replace surrounding
    update_n_lines = 'tsn', -- Update `n_lines`

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },

  -- Number of lines within which surrounding is searched
  n_lines = 20,

  -- Whether to respect selection type:
  -- - Place surroundings on separate lines in linewise mode.
  -- - Place surroundings on each line in blockwise mode.
  respect_selection_type = false,

  -- How to search for surrounding (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
  -- see `:h MiniSurround.config`.
  search_method = 'cover',

  -- Whether to disable showing non-error feedback
  silent = false,
}
--require('mini.base16').setup({
--  -- Table with names from `base00` to `base0F` and values being strings of
--  -- HEX colors with format "#RRGGBB". NOTE: this should be explicitly
--  -- supplied in `setup()`.
--  palette = {
--    base00 = "#1e1e2e", -- base
--    base01 = "#181825", -- mantle
--    base02 = "#313244", -- surface0
--    base03 = "#45475a", -- surface1
--    base04 = "#585b70", -- surface2
--    base05 = "#cdd6f4", -- text
--    base06 = "#f5e0dc", -- rosewater
--    base07 = "#b4befe", -- lavender
--    base08 = "#f38ba8", -- red
--    base09 = "#fab387", -- peach
--    base0A = "#f9e2af", -- yellow
--    base0B = "#a6e3a1", -- green
--    base0C = "#94e2d5", -- teal
--    base0D = "#89b4fa", -- blue
--    base0E = "#cba6f7", -- mauve
--    base0F = "#f2cdcd", -- flamingo
--  },
--
--  -- Whether to support cterm colors. Can be boolean, `nil` (same as
--  -- `false`), or table with cterm colors. See `setup()` documentation for
--  -- more information.
--  use_cterm = nil,
--
--  -- Plugin integrations. Use `default = false` to disable all integrations.
--  -- Also can be set per plugin (see |MiniBase16.config|).
--  plugins = { default = true },
--})

