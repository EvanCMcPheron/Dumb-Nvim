local find_file_cmd = { 'fd', '-I', '--type', 'f', '--hidden', '--exclude', '.git', '--exclude', 'node_modules' }

local r = {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    theme = "dropdown",
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.8,
      },
    },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    file_browser = {
      -- theme = "dropdown",
      -- find_command = find_file_cmd,
      -- layout_strategy = "vertical",
      -- layout_config = {
      --   height = 0.8,
      --   preview_height = 0.7,
      --   prompt_position = "top",
      --   width = 0.4,
      -- }
    },
    find_files = {
      theme = "dropdown",
      find_command = find_file_cmd,
      layout_strategy = "vertical",
      layout_config = {
        height = 0.8,
        preview_height = 0.7,
        prompt_position = "top",
        width = 0.4,
      }
    },
    colorscheme = {
      enable_preview = true
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      find_command = find_file_cmd,
      layout_strategy = "vertical",
      layout_config = {
        height = 0.8,
        preview_height = 0.7,
        prompt_position = "top",
        width = 0.4,
      },
      hidden = true,
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  }
}
return r
