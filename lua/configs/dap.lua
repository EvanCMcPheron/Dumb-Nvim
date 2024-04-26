local dap = require('dap')

-- Doesn't seem to work on windows, gets weird "A breakpoint has been reached,
-- Error 0x80000003" error
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = vim.fn.stdpath('data') .. "\\mason\\bin\\codelldb.cmd",
    args = { "--port", "${port}" },
  }
}

dap.adapters.gdb = {
  id = 'gdb',
  type = 'executable',
  command = 'gdb',
  args = { '--quiet', '--interpreter=dap' },
}

dap.configurations.c = {
    {
        name = 'Run executable (GDB)',
        type = 'gdb',
        request = 'launch',
        -- This requires special handling of 'run_last', see
        -- https://github.com/mfussenegger/nvim-dap/issues/1025#issuecomment-1695852355
        program = function()
            local path = vim.fn.input({
                prompt = 'Path to executable: ',
                default = vim.fn.getcwd() .. '/',
                completion = 'file',
            })

            return (path and path ~= '') and path or dap.ABORT
        end,
    },
    {
        name = 'Run executable with arguments (GDB)',
        type = 'gdb',
        request = 'launch',
        -- This requires special handling of 'run_last', see
        -- https://github.com/mfussenegger/nvim-dap/issues/1025#issuecomment-1695852355
        program = function()
            local path = vim.fn.input({
                prompt = 'Path to executable: ',
                default = vim.fn.getcwd() .. '/',
                completion = 'file',
            })

            return (path and path ~= '') and path or dap.ABORT
        end,
        args = function()
            local args_str = vim.fn.input({
                prompt = 'Arguments: ',
            })
            return vim.split(args_str, ' +')
        end,
    },
    {
        name = 'Attach to process (GDB)',
        type = 'gdb',
        request = 'attach',
        processId = require('dap.utils').pick_process,
    },
}

dap.configurations.rust = {
  {
    name = 'Run executable (GDB)',
    type = 'gdb',
    request = 'launch',
    -- This requires special handling of 'run_last', see
    -- https://github.com/mfussenegger/nvim-dap/issues/1025#issuecomment-1695852355
    program = function()
      local path = vim.fn.input {
        prompt = 'Path to executable: ',
        default = vim.fn.getcwd() .. '\\target\\debug\\',
        completion = "file",
      }
      return (path and path ~= '') and path or dap.ABORT
    end,
    -- cwd = '${workspaceFolder}',
    stopOnEntry = true,
    -- program = function()
    --   local path = vim.fn.input({
    --     prompt = 'Path to executable: ',
    --     default = vim.fn.getcwd() .. '/',
    --     completion = 'file',
    --   })
    --
    --   return (path and path ~= '') and path or dap.ABORT
    -- end,
  },
  {
    name = 'Run executable with arguments (GDB)',
    type = 'gdb',
    request = 'launch',
    -- This requires special handling of 'run_last', see
    -- https://github.com/mfussenegger/nvim-dap/issues/1025#issuecomment-1695852355
    program = function()
      local path = vim.fn.input {
        prompt = 'Path to executable: ',
        default = vim.fn.getcwd() .. '\\target\\debug\\',
        completion = "file",
      }
      return (path and path ~= '') and path or dap.ABORT
    end,
    -- cwd = '${workspaceFolder}',
    stopOnEntry = true,
    args = function()
      local args_str = vim.fn.input({
        prompt = 'Arguments: ',
      })
      return vim.split(args_str, ' +')
    end,
  },
  {
    name = 'Attach to process (GDB)',
    type = 'gdb',
    request = 'attach',
    processId = require('dap.utils').pick_process,
  },
}

-- local function cmd_affix()
--   if string.find(vim.loop.os_uname().sysname, "Windows") then
--     return '.cmd'
--   end
--   return ''
-- end
--
-- local mason_bin = vim.fn.resolve(vim.fn.stdpath('data') .. '/mason/bin/')
--
-- dap.adapters.cppdbg = {
--     id = 'cppdbg',
--     type = 'executable',
--     command = vim.fn.resolve(mason_bin .. 'OpenDebugAD7' .. cmd_affix()),
--     options = {
--         detached = false,
--     },
--     MIMode = 'gdb',
--     MIDebuggerPath = 'gdb.exe',
-- }
--
-- dap.configurations.rust = {
--   {
--     name = "Rust debug",
--     type = "cppdbg",
--     request = "launch",
--     program = function()
--       return vim.fn.input {
--         prompt = 'Path to executable: ',
--         default = vim.fn.getcwd() .. '\\target\\debug\\',
--         completion = "file",
--       }
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = true,
--   },
-- }
