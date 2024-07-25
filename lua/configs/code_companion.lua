return function()
  vim.env.ANTHROPIC_API_KEY = require('api_keys').anthropic
  require("codecompanion").setup({
    adapters = {
      anthropic = function()
        return require("codecompanion.adapters").use("anthropic", {
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
        adapter = "anthropic",
      },
      inline = {
        adapter = "anthropic",
      },
      agent = {
        adapter = "anthropic"
      },
    },
  })
end
