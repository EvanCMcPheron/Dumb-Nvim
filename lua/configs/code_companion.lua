local adapter = "openai"
-- local utils = require("codecompanion.utils.util")

return function()
  vim.env.ANTHROPIC_API_KEY = require('api_keys').anthropic
  vim.env.OPENAI_API_KEY = require('api_keys').open_ai
  require("codecompanion").setup({
    display = {
      chat = {
        window = {
          layout = 'float',
        }
      },
      inline = {
        layout = 'buffer'
      }
    },
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
    default_prompts = {
      ["Generate a Commit Message"] = {
        strategy = "chat",
        description = "Generate a commit message",
        opts = {
          index = 6,
          default_prompt = true,
          mapping = "<LocalLeader>cm",
          slash_cmd = "commit",
          auto_submit = true,
        },
        prompts = {
          {
            role = "user",
            contains_code = true,
            content = function()
              return
                  "You are an expert at following the Conventional Commit specification. Given the git diff listed below, please generate a commit message for me. Only respond with the generated commit message and nothing else (no explanation):"
                  .. "\n\n```\n"
                  .. vim.fn.system("git diff")
                  .. "\n```"
            end,
          },
        },
      },
    }
  })
end
