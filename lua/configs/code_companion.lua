local adapter = "openai"

return function()
  vim.env.ANTHROPIC_API_KEY = require('api_keys').anthropic
  vim.env.OPENAI_API_KEY = require('api_keys').open_ai
  require("codecompanion").setup({
    adapters = {
      openai = function()
        return require("codecompanion.adapters").use("openai", {
          schema = {
            model = {
              default = "gpt-4o-mini",
            },
          },
        })
      end,
      anthropic = function()
        return require("codecompanion.adapters").use(adapter, {
          schema = {
            model = {
              default = "claude-3-5-sonnet-20240620",
            },
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = adapter,
      },
      inline = {
        adapter = adapter,
      },
      agent = {
        adapter = adapter
      },
    },
  })
end
