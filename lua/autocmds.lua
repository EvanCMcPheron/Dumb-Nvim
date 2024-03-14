-- setting autocmds for overriding settings on certain filetypes
local autocmds = {
  {
    extension = "*.*",
    callback = function()
    end,
  },
  {
    extension = "*.rs",
    callback = function() 
      vim.cmd("set tabstop=4")
      vim.cmd("set softtabstop=4")
      vim.cmd("set shiftwidth=4")
    end,
  },
}
return autocmds
