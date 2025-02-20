local api = vim.api

-- Function to convert hex color to RGB
local function hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

-- Function to highlight hex color codes with colored squares
local function highlight_hex_colors()
  local bufnr = api.nvim_get_current_buf()
  local lines = api.nvim_buf_get_lines(bufnr, 0, -1, false)
  local ns_id = api.nvim_create_namespace("HexColorHighlight")

  -- Clear previous highlights
  api.nvim_buf_clear_namespace(bufnr, ns_id, 0, -1)

  for i, line in ipairs(lines) do
    for hex in line:gmatch("#%x%x%x%x%x%x") do
      local r, g, b = hex_to_rgb(hex)
      local color = string.format("#%02x%02x%02x", r, g, b)

      -- Highlight hex color code with a colored square
      api.nvim_buf_set_extmark(bufnr, ns_id, i - 1, line:find(hex) - 1, {
        virt_text = {{ "■", "HexColor" }},
        virt_text_pos = "inline",
        hl_mode = "combine",
      })

      -- Create highlight group for the color
      vim.cmd(string.format("highlight HexColor guifg=%s", color))
    end
  end
end

-- Call the function to highlight hex color codes
highlight_hex_colors()

local bob = "#b279a7"
