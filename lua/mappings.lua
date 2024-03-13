-- keybindings
-- Modes include n, v, s, c, t, i
-- juxtiposition implies one after the other in the combo
-- chars in <> seporated by - go in parrellel
--    EX: <C-W> <Leader> ab means ctrl+w then leader (space) then a then b

-- NOTES
-- GCC comments out the current line in normal mode
-- GC comments out the selected area in visual mode

local tb = require('telescope.builtin')
local harpoon = require('harpoon')

local r = {
  i = {
  },
  n = {
    ["<leader>t"] = { name = "+bindings" },
    ["<leader>th"] = { function() vim.cmd("sp " .. vim.fn.stdpath("config") .. "/lua/mappings.lua") end, "Oppen mappings file" },
    ['<leader>tc'] = { ":Cheatsheet<CR>", "Open cheatsheet (doesn't include mappings" },

    ["<leader>f"] = { name = "+navigation"},
    ["<leader>ff"] = { tb.find_files, "Find File" },
    ["<leader>fg"] = { tb.live_grep, "Live Grep" },
--    ["<leader>fh"] = { tb.help_tags, "Help Tags" }, fh now used by harpoon

    ['<leader>ft'] = { ":NvimTreeToggle<CR>", "Toggle File Tree" },
    ['<leader>fc'] = { ":NvimTreeCollapse<CR>", "Collapse File Tree" },

    ['<leader>fh'] = { ":Telescope harpoon marks <CR>", "Harpoon Marks" },
    ['<leader>m'] = { function() harpoon:list():append() end , "Add Harpoon Mark" },
    ['<leader>h'] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Toggle Harpoon (quickmenu)" },
    ['<leader>n'] = { name = "+Harpoon quickselects" },
    ['<leader>nn'] = { function() harpoon:list():select(1) end, "First harpoon item" },
    ['<leader>nh'] = { function() harpoon:list():select(2) end, "Second harpoon item" },
    ['<leader>nt'] = { function() harpoon:list():select(3) end, "Third harpoon item" },
    ['<leader>ns'] = { function() harpoon:list():select(4) end, "Fourth harpoon item" },

    ['<leader>m'] = { ":TSJToggle<CR>", "Split/unsplit text blocks" },

    -- lspconfig suggested keybindings
    ['<space>e'] = { vim.diagnostic.open_float, "" },
    ['[d'] = { vim.diagnostic.goto_prev, "" },
    [']d'] = { vim.diagnostic.goto_next, "" },
    ['<space>q'] = { vim.diagnostic.setloclist, "" },

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

-- LSPCONFIG recommended thing, idk how I could do this different;y :/
-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

return r
