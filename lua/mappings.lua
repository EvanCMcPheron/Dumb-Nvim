-- keybindings
-- Modes include n, v, s, c, t, i
-- juxtiposition implies one after the other in the combo
-- chars in <> seporated by - go in parrellel
--    EX: <C-W> <Leader> ab means ctrl+w then leader (space) then a then b

-- NOTES
-- GCC comments out the current line in normal mode
-- GC comments out the selected area in v mode

local harpoon = require('harpoon')
local term_map = require("terminal.mappings")

local run_cmd = nil

local r = {
  i = {
    ['<C-k>'] = { function() require('luasnip').expand() end, "Expand luasnips" },
    ['<C-l>'] = { function() require('luasnip').jump(1) end, "Snippet Jump" },
    ['<C-h>'] = { function() require('luasnip').jump(-1) end, "Snippet Jump Back" },
    ['<C-A-h>'] = { require('smart-splits').move_cursor_left, "" },
    ['<C-A-j>'] = { require('smart-splits').move_cursor_down, "" },
    ['<C-A-k>'] = { require('smart-splits').move_cursor_up, "" },
    ['<C-A-l>'] = { require('smart-splits').move_cursor_right, "" },
    ['<C-o>'] = { '<Escape>', "quick escape" },
  },
  n = {
    -- Keybindings established elsewhere, but still of NOTES
    -- 
    -- keys = {
    --   -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
    --   {
    --     "<leader>oo",
    --     ":<c-u>lua require('ollama').prompt()<cr>",
    --     desc = "ollama prompt",
    --     mode = { "n", "v" },
    --   },
    --
    --   -- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
    --   {
    --     "<leader>oG",
    --     ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
    --     desc = "ollama Generate Code",
    --     mode = { "n", "v" },
    --   },
    -- },
    -- END

    ["<leader>f"] = { name = "+navigation" },
    ["<space>fb"] = {":Telescope file_browser<CR>", "File Browser" },
    -- ["<space>ff"] = {":Telescope file_browser path=%:p:h select_buffer=true<CR>", "File Browser" },
    ["<leader>ff"] = { ":Telescope find_files<CR>", "Find File" },
    ["<leader>fg"] = { ":Telescope live_grep<CR>", "Live Grep" },
    ["<leader>ft"] = { ":Telescope help_tags<CR>", "Find Help tags" },
       -- ["<leader>fh"] = { tb.help_tags, "Help Tags" }, fh now used by harpoon

    -- ['<leader>ft'] = { ":NvimTreeToggle<CR>", "Toggle File Tree" },
    -- ['<leader>fc'] = { ":NvimTreeFindFileToggle<CR>", "Toggle File Tree to Here" },

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
    ['<leader>e'] = { vim.diagnostic.open_float, "Open diagnostics floating" },
    ['[d'] = { vim.diagnostic.goto_prev, "Goto previous diagnostic" },
    [']d'] = { vim.diagnostic.goto_next, "Goto next diagnostic" },
    ['<leader>q'] = { vim.diagnostic.setloclist, "Open diagnostics list" },

    -- Autocomplete
    ['<C-n>'] = { "Autocomplete move down." },
    ['<C-p>'] = { "Autocomplete move up." },

    ['<leader>c'] = { name = '+code' },
    ['<leader>cs'] = { ":TSJToggle<CR>", "Split/unsplit text blocks" },
    ['<leader>cg'] = { ":ZenMode<CR>", "Toggle zen mode" },
    ['<leader>ct'] = { ":Twilight<CR>", "Toggle Twilight" },
    ['<leader>ch'] = { ":set foldmethod=indent<CR>", "Enable cold folding" },
    ['<leader>cu'] = { ":UndotreeToggle<CR>", "Undo Tree Toggle" },
    ['<leader>cp'] = { "<cmd>TodoTelescope<CR>", "Todo Comments Telescope" },
    ['<leader>cd'] = { name = "+rust stuff"},
    ['<leader>cdd'] = {
      "<cmd>!cargo doc --open<CR>", "Generates and opens rust docs",
    },
    ['<leader>cds'] = {
      "<cmd>!rustup doc --std<CR>", "Open docs for rust's standard library",
    },
    ['<leader>cdf'] = { function ()
      vim.cmd("!cargo fix")
      vim.cmd("redraw")
    end, "Cargo Fix"},
    ['<leader>crc'] = {
      function ()
        run_cmd = vim.fn.input({prompt = "Run Code Shell Cmd: ", commpletion = "file", cancelreturn = nil})
        if run_cmd == "" then
          run_cmd = nil
        end
      end,
      "Change run cmd",
    },
    ['<leader>crr'] = {
      function ()
        if run_cmd == nil then
          run_cmd = vim.fn.input({prompt = "Run Code Shell Cmd: ", commpletion = "file", cancelreturn = nil})
          if run_cmd == "" then
            run_cmd = nil
          end
        end
        if run_cmd ~= nil then    -- This double checking is necessary bcs the input could return nil
          vim.cmd("TermRun " .. run_cmd)
        end
      end,
      "Run Code Shell Command",
    },

    ['<leader>?'] = { ":Cheatsheet<CR>", "Open Cheatsheet" },

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

    ['<A-S-h>'] = { require('smart-splits').move_cursor_left, "Move cursor left" },
    ['<A-S-j>'] = { require('smart-splits').move_cursor_down, "Move cursor down" },
    ['<A-S-k>'] = { require('smart-splits').move_cursor_up, "Move cursor up" },
    ['<A-S-l>'] = { require('smart-splits').move_cursor_right, "Move cursor right" },

    ['<leader><leader>h'] = { require('smart-splits').swap_buf_left, "Swap window left" },
    ['<leader><leader>j'] = { require('smart-splits').swap_buf_down, "Swap window right" },
    ['<leader><leader>k'] = { require('smart-splits').swap_buf_up, "Swap window up" },
    ['<leader><leader>l'] = { require('smart-splits').swap_buf_right, "Swap winow right" },

    ['<leader>t'] = { name = "+terminal" },
    ['<leader>ts'] = { term_map.operator_send, { expr = true }, "Operator send (not sure tbh)" },
    ['<leader>to'] = { term_map.toggle, "Toggle Terminal" },
    ['<leader>tO'] = { term_map.open({ open_cmd = "enew" }), "Toggle Terminal in buffer" },
    ['<leader>tr'] = { term_map.run, "Create a new terminal" },
    ['<leader>tR'] = { term_map.run(nil, { layout = { open_cmd = "enew" } }), "Create a new Terminal in buffer" },
    ['<leader>tk'] = { term_map.kill, "kill current terminal" },
    ['<leader>t]'] = { term_map.cycle_next, "Cycle terminal next" },
    ['<leader>t['] = { term_map.cycle_prev, "Cycle terminal prev" },
    ['<leader>tl'] = { term_map.move({ open_cmd = "belowright vnew" }), "Move terminal belowright vertical" },
    ['<leader>tL'] = { term_map.move({ open_cmd = "botright vnew" }), "Move terminal bottomright vertical" },
    ['<leader>th'] = { term_map.move({ open_cmd = "belowright new" }), "Move terminal belowright" },
    ['<leader>tH'] = { term_map.move({ open_cmd = "botright new" }), "Move terminal bottomright" },
    ['<leader>tf'] = { term_map.move({ open_cmd = "float" }), "Move terminal to floating" },
    ['<leader>tg'] = { ":Lazygit<CR>", "Open Lazygit (floating)" },

    ['<leader>a'] = { name = "+AI Tooling" },
    ['<leader>ai'] = { "" },
    -- ['<leader>ag'] = { ":NeoAI<CR>", "Open NeoAI TUI" },
    -- ['<leader>ai'] = {
    --   function()
    --     local i = vim.fn.input { prompt = "Prompt for AI: ", cancelreturn = "nil" }
    --     if i ~= "nil" then
    --       vim.cmd("NeoAIInject " .. i)
    --     end
    --   end,
    --   "NeoAI Inject"
    -- },
    -- ['<leader>ac'] = {
    --   function()
    --     local i = vim.fn.input { prompt = "Prompt for AI: ", cancelreturn = "nil" }
    --     if i ~= "nil" then
    --       vim.cmd("NeoAIInjectCode " .. i)
    --     end
    --   end,
    --   "NeoAI Inject (only code)"
    -- },
    ['<leader>dr'] = { '<cmd>lua require("dap").continue()<cr>', "start debugging" },
    ['<leader>do'] = { '<cmd>lua require("dap").step_over()<cr>', "step over" },
    ['<leader>di'] = { '<cmd>lua require("dap").step_into()<cr>', "step into" },
    ['<leader>de'] = { '<cmd>lua require("dap").step_out()<cr>', "step out" },
    ['<leader>db'] = { '<cmd>lua require("dap").toggle_breakpoint()<cr>', "toggle breakpoint" },
    ['<leader>dB'] = { '<cmd>lua require("dap").toggle_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', "toggle breakpoint with condition" },
    ['<leader>dui'] = { '<cmd>lua require("dapui").toggle()<cr>', "toggle DapUI" },
  },
  v = {
    ['<C-l>'] = { function() require('luasnip').jump(1) end, "Snippet Jump" },
    ['<C-h>'] = { function() require('luasnip').jump(-1) end, "Snippet Jump Back" },
    ['<leader>a'] = { name = "AI" },
    -- ['<leader>as'] = { "AI summarize text" },
    -- ['<leader>ag'] = { ":'<,'>NeoAIContext<CR>", "Open NeoAI TUI" },
    -- ['<leader>ai'] = { ":'<,'>NeoAIInjectContext ", "NeoAI Inject" },
    -- ['<leader>ac'] = { ":'<,'>NeoAIInjectContextCode ", "NeoAI Inject (only code)" },
  },
  s = {
    ["<C-r>"] = [[<CMD>SearchReplaceSingleBufferVisualSelection<CR>]],
    ["<C-s>"] = [[<CMD>SearchReplaceWithinVisualSelection<CR>]],
    ["<C-b>"] = [[<CMD>SearchReplaceWithinVisualSelectionCWord<CR>]],
  },
  t = {
    ['<A-S-h>'] = { require('smart-splits').move_cursor_left, "Move cursor left" },
    ['<A-S-j>'] = { require('smart-splits').move_cursor_down, "Move cursor down" },
    ['<A-S-k>'] = { require('smart-splits').move_cursor_up, "Move cursor up" },
    ['<A-S-l>'] = { require('smart-splits').move_cursor_right, "Move cursor right" },
    ['<C-o>'] = { '<C-\\><C-n>', "quick escape" },
  }
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
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>cf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

return r
