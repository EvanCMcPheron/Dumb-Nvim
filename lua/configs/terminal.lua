require('terminal').setup {
  layout = { open_cmd = "float" },
  cmd = {
    function(idk)
      vim.cmd("set nonumber")
      vim.cmd('set norelativenumber')
      vim.o.shell(idk)
    end,
  },
  autoclose = true,
}

local lazygit = require("terminal").terminal:new({
    layout = { open_cmd = "float", height = 0.9, width = 0.9 },
    cmd = { 
      "lazygit"
    },
    autoclose = true,
})
vim.env["GIT_EDITOR"] = "nvr -cc close -cc split --remote-wait +'set bufhidden=wipe'"
vim.api.nvim_create_user_command("Lazygit", function(args)
    lazygit.cwd = args.args and vim.fn.expand(args.args)
    lazygit:toggle(nil, true)
    if next(lazygit:get_current_tab_windows()) then
      vim.cmd("set nonumber")
      vim.cmd("set norelativenumber")
    end
    
end, { nargs = "?" })

