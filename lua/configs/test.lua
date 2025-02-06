--vim.cmd [[
--  highlight TelescopeBorder guibg=#282c34
--  highlight TelescopePromptBorder guibg=#282c34
--  highlight TelescopeResultsBorder guibg=#282c34
--  highlight TelescopePreviewBorder guibg=#282c34
--  highlight TelescopePromptNormal guibg=#282c34
--  highlight TelescopeResultsNormal guibg=#282c34
--  highlight TelescopePreviewNormal guibg=#282c34
--  highlight TelescopePromptPrefix guibg=#282c34
--  highlight TelescopeSelection guibg=#3a3f4b
--]]

-- Utility function to lighten a hex color by a given percentage
local function lighten_hex_color(hex_color, percent)
  local r = tonumber(hex_color:sub(2, 3), 16)
  local g = tonumber(hex_color:sub(4, 5), 16)
  local b = tonumber(hex_color:sub(6, 7), 16)
  r = math.floor(r + (255 - r) * percent)
  g = math.floor(g + (255 - g) * percent)
  b = math.floor(b + (255 - b) * percent)
  return string.format("#%02x%02x%02x", r, g, b)
end

-- Function to get Neovim background color and return a lighter version
local function get_lighter_bg_color()
  local bg_color = vim.api.nvim_get_hl_by_name('Normal', true)['background']

  -- Convert color to hex
  local hex_color = string.format("#%06x", bg_color)

  -- Lighten the color by 10%
  local lighter_color = lighten_hex_color(hex_color, 0.05)

  return lighter_color
end

vim.api.nvim_create_user_command('GetBgColor', function ()
  print(get_lighter_bg_color())
end, {})
