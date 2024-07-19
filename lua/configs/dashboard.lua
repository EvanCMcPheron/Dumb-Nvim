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
  '       𝑏𝑦 𝑑𝑢𝑚𝑏 𝑝𝑒𝑜𝑝𝑙𝑒, 𝑓𝑜𝑟 𝑑𝑢𝑚𝑏 𝑝𝑒𝑜𝑝𝑙𝑒        ',
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
        icon = '󰘛 ',
        icon_hl = '@variable',
        desc = 'Load Session',
        group = 'Label',
        action = 'SessionsLoad',
        key = 's',
      },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Find Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        icon = '󰣉 ',
        icon_hl = '@variable',
        desc = 'Harpoon',
        group = 'label',
        action = 'require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())',
        key = 'h',
      },
      {
        icon = '󱁽 ',
        icon_hl = '@variable',
        desc = 'Open File Browser',
        group = 'label',
        action = 'Telescope file_browser',
        key = 'd',
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
          vim.cmd("SessionsLoad")
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
