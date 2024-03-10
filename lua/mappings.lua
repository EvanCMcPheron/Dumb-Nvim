-- keybindings
-- Modes include n, v, s, c, t, i
-- juxtiposition implies one after the other in the combo
-- chars in <> seporated by - go in parrellel
--    EX: <C-W> <Leader> ab means ctrl+w then leader (space) then a then b

local tb = require('telescope.builtin')
local harpoon = require('harpoon')

local r = {
  n = {
    ["<leader>t"] = { name = "+cheatsheet" },
    ["<leader>th"] = { function() vim.cmd("sp " .. vim.fn.stdpath("config") .. "/lua/mappings.lua") end, "Oppen mappings file" },

    ["<leader>f"] = { name = "+file"},
    ["<leader>ff"] = { tb.find_files, "Find File" },
    ["<leader>fb"] = { tb.live_grep, "Live Grep" },
    ["<leader>fh"] = { tb.help_tags, "Help Tags" },

    ['<leader>a'] = { harpoon.append, "Harpoon Append" },
    ["<C-e>"] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Harpoon Toggle Menu" },

    ["<C-h>"] = { function() harpoon:list():select(1) end, "Harppon select 1" },
    ["<C-t>"] = { function() harpoon:list():select(2) end, "Harppon select 2" },
    ["<C-n>"] = { function() harpoon:list():select(3) end, "Harppon select 3" },
    ["<C-s>"] = { function() harpoon:list():select(4) end, "Harppon select 4" },

-- Toggle previous & next buffers stored within Harpoon list
    ["<C-S-P>"] = { function() harpoon:list():prev() end, "Harpoon prev" },
    ["<C-S-N>"] = { function() harpoon:list():next() end, "Harpoon next" },
  }
}

return r
