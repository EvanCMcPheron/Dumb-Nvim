require('terminal').setup {
  layout = { open_cmd = "float" },
  cmd = {
    function()
      vim.cmd("set nonumber")
      vim.cmd('set norelativenumber')
      vim.cmd('term nu')
    end,
  },
  autoclose = false,
}

local lazygit = require("terminal").terminal:new({
    layout = { open_cmd = "float", height = 0.9, width = 0.9 },
    cmd = { "lazygit" },
    autoclose = true,
})
vim.env["GIT_EDITOR"] = "nvr -cc close -cc split --remote-wait +'set bufhidden=wipe'"
vim.api.nvim_create_user_command("Lazygit", function(args)
    lazygit.cwd = args.args and vim.fn.expand(args.args)
    lazygit:toggle(nil, true)
end, { nargs = "?" })

