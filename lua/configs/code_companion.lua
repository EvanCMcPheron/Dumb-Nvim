-- Define models for convenience
local anthropic_models = {}
anthropic_models.sonnet = "claude-3-5-sonnet-20240620"  --3/15 $ per M Token
anthropic_models.opus = "claude-3-opus-20240229"  --15/75 $ per M Token
anthropic_models.haiku = "claude-3-haiku-20240307"  --0.25/1.25 $ per M Token
local openai_models = {}
openai_models["gpt-4o"] = "gpt-4o"  --5/15 $ per M Token
openai_models["gpt-4o-mini"] = "gpt-40-mini"  --0.15/0.6 $ per M Token

-- Actual configuration
local adapter = "anthropic"
local anthropic_model = anthropic_models.haiku
local openai_model = openai_models["gpt-4o-mini"]

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
              default = openai_model,
            },
          },
        })
      end,
      anthropic = function()
        return require("codecompanion.adapters").use("anthropic", {
          schema = {
            model = {
              default = anthropic_model,
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
