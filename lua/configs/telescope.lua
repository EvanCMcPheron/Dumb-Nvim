local respect_gitignore = false

-- set the find_file cmd to either respect of not respect gitignore based on
-- above declared local bool
local find_file_cmd = { 'fd', '-I', '--type', 'f', '--hidden', '--exclude', '.git', '--exclude', 'node_modules' }
if respect_gitignore then
  find_file_cmd = { 'fd', '--type', 'f', '--hidden', '--exclude', '.git', '--exclude', 'node_modules' }
end

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
        height = 0.7,
        preview_height = 0.6,
        prompt_position = "top",
        width = 0.25,
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
      respect_gitignore = respect_gitignore,
      layout_config = {
        height = 0.9,
        preview_height = 0.5,
        prompt_position = "top",
        width = 0.8,
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
