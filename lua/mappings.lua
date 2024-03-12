-- keybindings
-- Modes include n, v, s, c, t, i
-- juxtiposition implies one after the other in the combo
-- chars in <> seporated by - go in parrellel
--    EX: <C-W> <Leader> ab means ctrl+w then leader (space) then a then b

local tb = require('telescope.builtin')
local harpoon = require('harpoon')

local r = {
  n = {
    ["<leader>t"] = { name = "+bindings" },
    ["<leader>th"] = { function() vim.cmd("sp " .. vim.fn.stdpath("config") .. "/lua/mappings.lua") end, "Oppen mappings file" },
    ['<leader>tc'] = { ":Cheatsheet<CR>", "Open cheatsheet (doesn't include mappings" },

    ["<leader>f"] = { name = "+navigation"},
    ["<leader>ff"] = { tb.find_files, "Find File" },
    ["<leader>fg"] = { tb.live_grep, "Live Grep" },
--    ["<leader>fh"] = { tb.help_tags, "Help Tags" }, fh now used by harpoon

    ['<leader>ft'] = { ":NvimTreeToggle<CR>", "Toggle File Tree" },
    ['<leader>fh'] = { ":NvimTreeToggle<CR>", "File Tree Focus Here" },
    ['<leader>fc'] = { ":NvimTreeCollapse<CR>", "Collapse File Tree" },

    ['<leader>fh'] = { ":Telescope harpoon marks <CR>", "Harpoon Marks" },
    ['<leader>m'] = { function() harpoon:list():append() end , "Add Harpoon Mark" },
    ['<leader>h'] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Toggle Harpoon (quickmenu)" },
    ['<leader>n'] = { name = "+Harpoon quickselects" },
    ['<leader>nn'] = { function() harpoon:list():select(1) end, "First harpoon item" },
    ['<leader>nh'] = { function() harpoon:list():select(2) end, "Second harpoon item" },
    ['<leader>nt'] = { function() harpoon:list():select(3) end, "Third harpoon item" },
    ['<leader>ns'] = { function() harpoon:list():select(4) end, "Fourth harpoon item" },

    
--    ['<leader>hp}'] = { harpoon.append, "Harpoon Append" },
--    ["<C-e>"] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Harpoon Toggle Menu" },

--    ["<C-h>"] = { function() harpoon:list():select(1) end, "Harppon select 1" },
--    ["<C-t>"] = { function() harpoon:list():select(2) end, "Harppon select 2" },
--    ["<C-n>"] = { function() harpoon:list():select(3) end, "Harppon select 3" },
--    ["<C-s>"] = { function() harpoon:list():select(4) end, "Harppon select 4" },

-- Toggle previou}s & next buffers stored within Harpoon list
--    ["<C-S-P>"] = { function() harpoon:list():prev() end, "Harpoon prev" },
--    ["<C-S-N>"] = { function() harpoon:list():next() end, "Harpoon next" },
  }
}

return r
