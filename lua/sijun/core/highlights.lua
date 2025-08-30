-- lua/sijun/core/highlights.lua
local function set_highlights()
  local hl = vim.api.nvim_set_hl

  -- subtler cursor line → transparent
  hl(0, "CursorLine", { bg = "NONE" })

  -- visual selection → transparent (only text color changes if you want)
  hl(0, "Visual", { bg = "NONE", underline = true })

  -- search results → keep foreground color, transparent background
  hl(0, "Search", { bg = "NONE", fg = "#ffcc00", bold = true })
  hl(0, "IncSearch", { bg = "NONE", fg = "#ffd866", bold = true })
end

-- apply immediately and after any colorscheme change
vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = set_highlights,
})


