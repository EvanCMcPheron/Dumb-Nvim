-- https://github.com/L3MON4D3/LuaSnip/blob/master/Examples/snippets.lua#L190
local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

local r = {
  all = {},
  lua = {
    s(
      "require",
      { t "require('", i(1), t "')", i(2) }
    ),
    s(
      "function () <oneline>",
      { t "function (", i(1), t ") ", i(2), t " end", }
    ),
  },
  rust = {
    s(
      "struct",
      { t "#[derive(", i(1), t { ")]", "" },
        i(2), t "struct ", i(3), t { " {", "    " },
        i(4), t { "", "}" }
      }
    ),
    s(
      "error <struct>",
      { t { "#[derive(Debug, Error)]", "" },
        t "pub struct ", i(1),
      }
    ),
    s(
      "error <enum>",
      { t { "#[derive(Debug, Error)]", "" },
        t "pub enum ", i(1), t { " {", "    " },
        i(2), t { "", "}" }
      }
    ),
  }
}
return r
