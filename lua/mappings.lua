-- keybindings
-- Modes include n, v, s, c, t, i
-- juxtiposition implies one after the other in the combo
-- chars in <> seporated by - go in parrellel
--    EX: <C-W> <Leader> ab means ctrl+w then leader (space) then a then b

-- NOTES
-- GCC comments out the current line in normal mode
-- GC comments out the selected area in v mode

local tb = require('telescope.builtin')
local harpoon = require('harpoon')

local r = {
  i = {
    ['<C-k>'] = { function() require('luasnip').expand() end, "Expand luasnips" },
    ['<C-l>'] = { function() require('luasnip').jump(1) end, "Snippet Jump" },
    ['<C-h>'] = { function() require('luasnip').jump(-1) end, "Snippet Jump Back" },
  },
  n = {
    ["<leader>f"] = { name = "+navigation" },
    ["<leader>ff"] = { tb.find_files, "Find File" },
    ["<leader>fg"] = { tb.live_grep, "Live Grep" },
    ["<leader>fb"] = { ":Telescope help_tags<CR>", "Find Help" },
    --    ["<leader>fh"] = { tb.help_tags, "Help Tags" }, fh now used by harpoon

    ['<leader>ft'] = { ":NvimTreeToggle<CR>", "Toggle File Tree" },
    ['<leader>fc'] = { ":NvimTreeCollapse<CR>", "Collapse File Tree" },

    ['<leader>h'] = { name = "+harpoon" },
    ['<leader>fh'] = { ":Telescope harpoon marks <CR>", "Harpoon Marks" },
    ['<leader>hm'] = { function() harpoon:list():append() end, "Add Harpoon Mark" },
    ['<leader>hh'] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Toggle Harpoon (quickmenu)" },
    ['<leader>n'] = { name = "+Harpoon quickselects" },
    ['<leader>nn'] = { function() harpoon:list():select(1) end, "First harpoon item" },
    ['<leader>nh'] = { function() harpoon:list():select(2) end, "Second harpoon item" },
    ['<leader>nt'] = { function() harpoon:list():select(3) end, "Third harpoon item" },
    ['<leader>ns'] = { function() harpoon:list():select(4) end, "Fourth harpoon item" },

    ['<leader>m'] = { name = "+syntax" },

    -- lspconfig suggested keybindings
    ['<space>e'] = { vim.diagnostic.open_float, "Open diagnostics floating" },
    ['[d'] = { vim.diagnostic.goto_prev, "Goto previous diagnostic" },
    [']d'] = { vim.diagnostic.goto_next, "Goto next diagnostic" },
    ['<space>q'] = { vim.diagnostic.setloclist, "Open diagnostics list" },

    ["r"] = { name = "+Search and Replace" },

    ["rs"] = { "<CMD>SearchReplaceSingleBufferSelections<CR>", "SearchReplaceSingleBuffer [s]elction list" },
    ["ro"] = { "<CMD>SearchReplaceSingleBufferOpen<CR>", "[o]pen" },
    ["rw"] = { "<CMD>SearchReplaceSingleBufferCWord<CR>", "[w]ord" },
    ["rW"] = { "<CMD>SearchReplaceSingleBufferCWORD<CR>", "[W]ORD" },
    ["re"] = { "<CMD>SearchReplaceSingleBufferCExpr<CR>", "[e]xpr" },
    ["rf"] = { "<CMD>SearchReplaceSingleBufferCFile<CR>", "[f]ile" },

    ["rb"] = { name = "+Search and replace multi-buffer" },

    ["rbs"] = { "<CMD>SearchReplaceMultiBufferSelections<CR>", "SearchReplaceMultiBuffer [s]elction list" },
    ["rbo"] = { "<CMD>SearchReplaceMultiBufferOpen<CR>", "[o]pen" },
    ["rbw"] = { "<CMD>SearchReplaceMultiBufferCWord<CR>", "[w]ord" },
    ["rbW"] = { "<CMD>SearchReplaceMultiBufferCWORD<CR>", "[W]ORD" },
    ["rbe"] = { "<CMD>SearchReplaceMultiBufferCExpr<CR>", "[e]xpr" },
    ["rbf"] = { "<CMD>SearchReplaceMultiBufferCFile<CR>", "[f]ile" },


    -- Autocomplete
    ['<C-n>'] = { "Autocomplete move down." },
    ['<C-p>'] = { "Autocomplete move up." },

    ['<leader>c'] = { name = '+code' },
    ['<leader>cs'] = { ":TSJToggle<CR>", "Split/unsplit text blocks" },
    ['<leader>cz'] = { function() require("zen-mode").toggle({ window = { width = .55 } }) end, "Toggle zen mode" },
    ['<leader>ct'] = { ":Twilight<CR>", "Toggle Twilight" },

    ['<leader>?'] = { ":Cheatsheet<CR>", "Open Cheatsheet" },

    --    ['<leader>hp}'] = { harpoon.append, "Harpoon Append" },
    --    ["<C-e>"] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Harpoon Toggle Menu" },

    --    ["<C-h>"] = { function() harpoon:list():select(1) end, "Harppon select 1" },
    --    ["<C-t>"] = { function() harpoon:list():select(2) end, "Harppon select 2" },
    --    ["<C-n>"] = { function() harpoon:list():select(3) end, "Harppon select 3" },
    --    ["<C-s>"] = { function() harpoon:list():select(4) end, "Harppon select 4" },

    -- Toggle previou}s & next buffers stored within Harpoon list
    --    ["<C-S-P>"] = { function() harpoon:list():prev() end, "Harpoon prev" },
    --    ["<C-S-N>"] = { function() harpoon:list():next() end, "Harpoon next" },
    ['<leader>w'] = { name = '+workspace' },
    ['<leader>wa'] = { "Add workspace folder" },
    ['<leader>wr'] = { "Remove workspace folder" },
    ['<leader>wl'] = { "Print workspace folders" },
    ['<leader>D'] = { "Type definitions" },
    ['<leader>r'] = { name = '+rename' },
    ['<leader>rn'] = { "Rename buffer (lsp)" },
    ['<leader>ca'] = { "Code Actions" },
    ['<leader>cf'] = { "Format Code" },

    ['<leader>s'] = { name = '+sessions' },
    ['<leader>ss'] = { ":SessionsSave<CR>", "Save current session" },
    ['<leader>sl'] = { ":SessionsLoad<CR>", "Load session attatched to current dir" },

    ['<A-h>'] = { require('smart-splits').resize_left, "Resize window left" },
    ['<A-j>'] = { require('smart-splits').resize_down, "Resize window down" },
    ['<A-k>'] = { require('smart-splits').resize_up, "Resize window up" },
    ['<A-l>'] = { require('smart-splits').resize_right, "Resize window right" },

    -- ['<C-H>'] = { require('smart-splits').move_cursor_left, "" },
    -- ['<C-J>'] = { require('smart-splits').move_cursor_down, "" },
    -- ['<C-K>'] = { require('smart-splits').move_cursor_up, "" },
    -- ['<C-L>'] = { require('smart-splits').move_cursor_right, "" },

    ['<leader><leader>h'] = { require('smart-splits').swap_buf_left, "Swap window left" },
    ['<leader><leader>j'] = { require('smart-splits').swap_buf_down, "Swap window right" },
    ['<leader><leader>k'] = { require('smart-splits').swap_buf_up, "Swap window up" },
    ['<leader><leader>l'] = { require('smart-splits').swap_buf_right, "Swap winow right" },

    ['<leader>t'] = { name = "+terminal" },
    ['<leader>tn'] = {
      function()
        vim.cmd("set nonumber")
        vim.cmd('set norelativenumber')
        vim.cmd('term nu')
      end,
      "Open nushell here"
    },
    ['<leader>tg'] = {
      function()
        vim.cmd("set nonumber")
        vim.cmd('set norelativenumber')
        vim.cmd('term lazygit')
      end,
      "Open lazygit here"
    },
    ['<leader>tsn'] = {
      function()
        vim.cmd('split')
        vim.cmd("set nonumber")
        vim.cmd('set norelativenumber')
        vim.cmd('term nu')
      end,
      "Open nushell split"
    },
    ['<leader>tsg'] = {
      function()
        vim.cmd('split')
        vim.cmd("set nonumber")
        vim.cmd('set norelativenumber')
        vim.cmd('term lazygit')
      end,
      "Open lazygit split"
    },
    ['<leader>tvn'] = {
      function()
        vim.cmd('vsplit')
        vim.cmd("set nonumber")
        vim.cmd('set norelativenumber')
        vim.cmd('term nu')
      end,
      "Open nushell vertical"
    },
    ['<leader>tvg'] = {
      function()
        vim.cmd('vsplit')
        vim.cmd("set nonumber")
        vim.cmd('set norelativenumber')
        vim.cmd('term lazygit')
      end,
      "Open lazygit vertical"
    },
  },
  v = {
    ['<C-l>'] = { function() require('luasnip').jump(1) end, "Snippet Jump" },
    ['<C-h>'] = { function() require('luasnip').jump(-1) end, "Snippet Jump Back" },
  },
  s = {
    ["<C-r>"] = [[<CMD>SearchReplaceSingleBufferVisualSelection<CR>]],
    ["<C-s>"] = [[<CMD>SearchReplaceWithinVisualSelection<CR>]],
    ["<C-b>"] = [[<CMD>SearchReplaceWithinVisualSelectionCWord<CR>]],
  },
}

-- show the effects of a search / replace in a live preview window
vim.o.inccommand = "split"

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
    vim.keymap.set({ 'n', 'i' }, '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>cf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

return r
