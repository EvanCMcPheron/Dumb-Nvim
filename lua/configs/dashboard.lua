local choose = function()
  math.randomseed(os.time())
  math.random(); math.random(); math.random(); math.random(); math.random(); math.random(); math.random(); math.random()
  local rand = math.random(1, 14)
  if rand == 1 then
    return '       𝑏𝑦 𝑑𝑢𝑚𝑏 𝑝𝑒𝑜𝑝𝑙𝑒, 𝑓𝑜𝑟 𝑑𝑢𝑚𝑏 𝑝𝑒𝑜𝑝𝑙𝑒        '
  elseif rand == 2 then
    return '𝑛𝑜𝑡 𝑒𝑣𝑒𝑟𝑦𝑜𝑛𝑒 𝑐𝑎𝑛 𝑏𝑒 𝑡h𝑒 𝑠h𝑎𝑟𝑝𝑒𝑠𝑡 𝑡𝑜𝑜𝑙 𝑖𝑛 𝑡h𝑒 𝑠h𝑒𝑑...'
  elseif rand == 3 then
    return '        𝑏𝑟𝑖𝑔h𝑒𝑟 𝑏𝑢𝑙𝑏𝑠 𝑏𝑢𝑟𝑛𝑜𝑢𝑡 𝑓𝑎𝑠𝑡𝑒𝑟!         '
  elseif rand == 4 then
    return '𝑏𝑒𝑖𝑛𝑔 𝑠𝑚𝑎𝑟𝑡 𝑖𝑠 𝑓𝑜𝑟 𝑑𝑢𝑚𝑏 𝑝𝑒𝑜𝑝𝑙𝑒, 𝑏𝑒𝑖𝑛𝑔 𝑑𝑢𝑚𝑏 𝑖𝑠 𝑓𝑜𝑟 𝑠𝑚𝑎𝑟𝑡 𝑝𝑜𝑒𝑝𝑙𝑒'
  elseif rand == 5 then
    return "𝐼𝑡'𝑠 𝑛𝑜𝑡 𝑡h𝑒 𝑠𝑖𝑧𝑒 𝑜𝑓 𝑡h𝑒 𝑏𝑜𝑎𝑡, 𝑏𝑢𝑡 𝑢h... 𝑤h𝑎𝑡 𝑤𝑒𝑟𝑒 𝑤𝑒 𝑡𝑎𝑙𝑘𝑖𝑛𝑔 𝑎𝑏𝑜𝑢𝑡?"
  elseif rand == 6 then
    return "𝑏𝑒𝑖𝑛𝑔 𝑠𝑚𝑎𝑟𝑡 𝑖𝑠 𝑓𝑜𝑟 𝑑𝑢𝑚𝑏 𝑝𝑒𝑜𝑝𝑙𝑒, 𝑏𝑒𝑖𝑛𝑔 𝑑𝑢𝑚𝑏 𝑖𝑠 𝑓𝑜𝑟 𝑠𝑚𝑎𝑟𝑡 𝑝𝑜𝑒𝑝𝑙𝑒'"
  elseif rand == 7 then
    return "𝐼𝑄 𝑖𝑠 𝑗𝑢𝑠𝑡 𝑎 𝑛𝑢𝑚𝑏𝑒𝑟... 𝐼 𝑐𝑎𝑛 𝑐𝑜𝑢𝑛𝑡 𝑡𝑜 𝑖𝑡 𝐼 𝑠𝑤𝑒𝑎𝑟!"
  elseif rand == 8 then
    return "𝑡h𝑖𝑛𝑘𝑖𝑛𝑔 𝑖𝑠 𝑜𝑣𝑒𝑟𝑟𝑎𝑡𝑒𝑑 anyways >:("
  elseif rand == 9 then
    return "𝐶𝑜𝑚𝑚𝑜𝑛 𝑠𝑒𝑛𝑠𝑒 𝑖𝑠 𝑑𝑒𝑎𝑑 𝑎𝑛𝑑 𝑤𝑒 h𝑎𝑣𝑒 𝑘𝑖𝑙𝑙𝑒𝑑 𝑖𝑡"
  elseif rand == 10 then
    return "𝑡h𝑖𝑛𝑘𝑖𝑛𝑔 𝑖𝑠 𝑜𝑣𝑒𝑟𝑟𝑎𝑡𝑒𝑑 anyways >:("
  elseif rand == 11 then
    return "𝐹𝑜𝑟 𝑡h𝑜𝑠𝑒 𝑤h𝑜 𝑡h𝑖𝑛𝑘 𝑜𝑢𝑡𝑠𝑖𝑑𝑒 𝑡h𝑒 𝑏𝑜𝑥... 𝑏𝑒𝑐𝑎𝑢𝑠𝑒 𝑡h𝑒𝑦 𝑐𝑎𝑛'𝑡 𝑓𝑖𝑛𝑑 𝑡h𝑒 𝑏𝑜𝑥."
  elseif rand == 12 then
    return "𝑠𝑜𝑚𝑒𝑜𝑛𝑒 h𝑎𝑠 𝑡𝑜 𝑘𝑒𝑒𝑝 𝑡h𝑒 𝑏𝑒𝑙𝑙 𝑐𝑢𝑟𝑣𝑒 𝑐𝑢𝑟𝑣𝑦..."
  elseif rand == 13 then
    return "        𝑏𝑟𝑖𝑔h𝑒𝑟 𝑏𝑢𝑙𝑏𝑠 𝑏𝑢𝑟𝑛𝑜𝑢𝑡 𝑓𝑎𝑠𝑡𝑒𝑟!         "
  elseif rand == 13 then
    return "𝐻𝑒𝑦 𝑝𝑎𝑙, 𝑑𝑖𝑑 𝑦𝑜𝑢 𝑗𝑢𝑠𝑡 𝑏𝑙𝑜𝑤 𝑖𝑛 𝑓𝑟𝑜𝑚 𝑠𝑡𝑢𝑝𝑖𝑑 𝑡𝑜𝑤𝑛? 𝑌𝑒𝑎h 𝑚𝑒 𝑡𝑜𝑜..."
  elseif rand == 13 then
    return "𝑃𝑎𝑡𝑟𝑖𝑐𝑘'𝑠 𝑓𝑎𝑣𝑜𝑟𝑖𝑡𝑒 𝑐𝑜𝑑𝑒 𝑒𝑑𝑖𝑡𝑜𝑟!"
  elseif rand == 13 then
    return "𝑠𝑜𝑚𝑒 𝑐𝑎𝑙𝑙 𝑖𝑡 𝑎 𝑑𝑒𝑓𝑖𝑐𝑖𝑒𝑛𝑐𝑦, 𝑜𝑡h𝑒𝑟𝑠 𝑐𝑎𝑙𝑙 𝑖𝑡 𝑎 𝑑𝑒𝑓𝑖𝑐𝑖𝑒𝑛𝑐𝑦"
  else -- implicit 10
    return '𝑠𝑜𝑚𝑒 𝑐𝑎𝑙𝑙 𝑖𝑡 𝑎 𝑑𝑒𝑓𝑖𝑐𝑖𝑒𝑛𝑐𝑦, 𝑜𝑡h𝑒𝑟𝑠 𝑐𝑎𝑙𝑙 𝑖𝑡 𝑎 𝑑𝑒𝑓𝑖𝑐𝑖𝑒𝑛𝑐𝑦'
  end
end

local dumb_nvim = {
  '',
  '██████╗░██╗░░░██╗███╗░░░███╗██████╗░',
  '██╔══██╗██║░░░██║████╗░████║██╔══██╗',
  '██║░░██║██║░░░██║██╔████╔██║██████╦╝',
  '██║░░██║██║░░░██║██║╚██╔╝██║██╔══██╗',
  '██████╔╝╚██████╔╝██║░╚═╝░██║██████╦╝',
  '╚═════╝░░╚═════╝░╚═╝░░░░░╚═╝╚═════╝░',
  '',
  '███╗░░██╗██╗░░░██╗██╗███╗░░░███╗',
  '████╗░██║██║░░░██║██║████╗░████║',
  '██╔██╗██║╚██╗░██╔╝██║██╔████╔██║',
  '██║╚████║░╚████╔╝░██║██║╚██╔╝██║',
  '██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║',
  '╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
  '',
}

local stupid_nvim = {
  -- '',
  -- '',
  -- '',
  -- '',
  -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⣤⠟⡇⠀⠀⠀⠀⠀⠀⣠⣶⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⣀⣼⣿⡃⠀⠀⢀⡾⡃⠀⣿⠀⠀⠀⠀⢠⡼⠋⢸⡆⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠹⠟⠋⠁⣰⡟⣠⡇⠀⢻⡀⠀⢀⣴⠏⢀⡀⠘⣷⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⠀⠀⣰⠟⣶⣿⡇⠠⠸⣧⣠⠟⠁⢀⣾⡇⠀⣿⠀⠀⠀⠀⠀⠀⠀',
  -- '⠐⣧⡀⠀⠀⠀⣸⠏⢾⠿⣿⡇⠀⠀⠙⠃⠀⢠⣾⣿⡇⠀⣿⡆⠀⠀⢀⣀⠀⠀',
  -- '⠀⠀⠙⢦⣀⡾⢿⣶⣮⣅⡀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠅⠀⢹⣇⣠⠶⠛⠛⠀⠀',
  -- '⠀⢠⣄⣀⣹⡇⠘⣿⣿⣿⠿⠆⠀⠒⢻⣾⣶⣶⣤⡀⠀⣠⣼⡟⠃⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⢀⣸⣧⠀⠀⠀⠀⠰⡆⠀⠀⠈⠿⣿⡿⡟⠻⠞⢯⣼⣇⣀⠀⠀⠀⠀⠀',
  -- '⠀⠠⡾⠛⠁⠘⠷⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠁⠀⠉⠛⠶⣤⣀⡀',
  -- '⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⣿⣶⣶⣶⣶⣶⣶⠶⠛⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠙⠛⠛⠛⢻⣇⠀⠀⠀⠀⠉⠳⣦⡄⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⡆⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡇⠀⠀⠀⡇⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⢸⠇⠀⠀⠀⣷⠀⠀⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⣀⣤⠴⠞⠛⠛⡆⠀⠀⠀⢸⣆⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⣾⣋⢀⣀⣠⣴⣾⠇⠀⠀⣰⠟⠙⠶⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠈⠉⠉⢁⡴⠋⠀⠀⣠⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  -- '⠀⠀⠀⠀⠀⠀⠀⣿⣤⣤⡴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '',
  '',
  '',
  '',
  '',
  '',
  '░██████╗████████╗██╗░░░██╗██████╗░██╗██████╗░ ',
  '██╔════╝╚══██╔══╝██║░░░██║██╔══██╗██║██╔══██╗ ',
  '╚█████╗░░░░██║░░░██║░░░██║██████╔╝██║██║░░██║ ',
  '░╚═══██╗░░░██║░░░██║░░░██║██╔═══╝░██║██║░░██║ ',
  '██████╔╝░░░██║░░░╚██████╔╝██║░░░░░██║██████╔╝ ',
  '╚═════╝░░░░╚═╝░░░░╚═════╝░╚═╝░░░░░╚═╝╚═════╝░ ',
  '',
  '███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗',
  '████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║',
  '██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║',
  '██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║',
  '██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║',
  '╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
  '',
  choose(),
  '',
  '',
}

local r = {
  disable_move = true,
  hide = { statusline = true },
  theme = "doom",
  config = {
    header = stupid_nvim,
    center = {
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'All Sessions',
        group = 'Label',
        action = 'SessionManager load_session',
        key = 'a',
      },
      {
        icon = '󰘛 ',
        icon_hl = '@variable',
        desc = 'Load Session',
        group = 'Label',
        action = 'SessionManager load_current_dir_session',
        key = 's',
      },
      -- {
      --   icon = ' ',
      --   icon_hl = '@variable',
      --   desc = 'Find Files',
      --   group = 'Label',
      --   action = 'Telescope find_files',
      --   key = 'f',
      -- },
      -- {
      --   icon = '󰣉 ',
      --   icon_hl = '@variable',
      --   desc = 'Harpoon',
      --   group = 'label',
      --   action = 'require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())',
      --   key = 'h',
      -- },
      {
        icon = '󱁽 ',
        icon_hl = '@variable',
        desc = 'Open File Browser',
        group = 'label',
        action = 'Telescope file_browser',
        key = 'b',
      },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Open Terminal',
        group = 'label',
        action = function()
          require("terminal.mappings").run(nil, { layout = { open_cmd = "enew" } })()
        end,
        key = 't',
      },
      {
        icon = '󰇈 ',
        icon_hl = '@variable',
        desc = 'Obsidian',
        group = 'label',
        action = function()
          -- load obsidian integration
          vim.cmd('Lazy load obsidian.nvim')

          local pickers = require("telescope.pickers")
          local finders = require("telescope.finders")
          local actions = require "telescope.actions"
          local action_state = require "telescope.actions.state"

          -- Load workspaces outlined in nvim config
          local workspaces = {}
          for i, v in ipairs(require 'obsidian_worspaces') do
            workspaces[i] = v.name
          end

          -- use telescope picker to select workspace
          pickers
              .new({}, {
                finder = finders.new_table({
                  results = workspaces,
                }),
                attach_mappings = function(prompt_bufnr, _)
                  actions.select_default:replace(function()
                    actions.close(prompt_bufnr)
                    local selection = action_state.get_selected_entry()
                    -- print(selection[1])
                    local ws = require 'obsidian_worspaces'
                    local fp = ''
                    for i, w in ipairs(ws) do
                      if w.name == selection[1] then
                        fp = w.path
                        break
                      end
                    end
                    if fp == '' then
                      vim.notify("Bad obsidian filepath (empty path string found)", "error")
                      return true
                    end

                    vim.cmd('cd ' .. fp)
                    vim.cmd('enew')
                  end)
                  return true
                end,
              })
              :find()
        end,
        key = 'o',
      },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Godot',
        group = 'label',
        action = function()
          -- set the godot external editor pipe depending on system
          local addr = './godot.pipe'
          if vim.fn.has('win32') then
            addr = '127.0.0.1:6004'
          end
          -- Start the godot server connection
          vim.fn.serverstart(addr)
          -- Create a new buffer so it doesnt look like nothing changed
          vim.cmd 'enew | r ! echo "Connected to Godot, open a script in Godot..."'
        end,
        key = 'g',
      },
      -- Setup godot server listening when open on a godot project
      {
        icon = '󰊪 ',
        icon_hl = '@variable',
        desc = 'Leet',
        group = 'label',
        action = 'Leet',
        key = 'l',
      },
      {
        desc = '󰊳 Update',
        group = '@property',
        action = 'Lazy update',
        key = 'u'
      },
      {
        icon = ' ',
        desc = 'Config',
        group = 'Label',
        action = function()
          vim.cmd("cd " .. vim.fn.stdpath("config"))
          vim.cmd("e lua/plugins.lua")
          vim.cmd("SessionManager load_current_dir_session")
        end,
        key = 'c',
      },
      {
        icon = '󰗼 ',
        desc = 'Exit',
        action = 'qa',
        key = 'q',
      }
    },
  }
}
return r
